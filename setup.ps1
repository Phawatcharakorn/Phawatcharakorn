<#
.SYNOPSIS
  แทนค่า placeholder ใน README.md และ assets/*.svg ให้เป็นข้อมูลของคุณทีเดียว

.EXAMPLE
  .\setup.ps1 -Username "octocat" -Name "Mona Lisa" -Email "me@example.com"

.EXAMPLE
  .\setup.ps1 -Username octocat -Name "Mona Lisa" -Email me@example.com `
              -LinkedIn mona -Instagram mona.dev -YouTube monadev -Facebook mona `
              -Portfolio https://mona.dev -Project1 my-portfolio -Project2 shop-app
#>
param(
  [Parameter(Mandatory)] [string]$Username,
  [Parameter(Mandatory)] [string]$Name,
  [string]$Email     = "",
  [string]$LinkedIn  = "",
  [string]$Instagram = "",
  [string]$YouTube   = "",
  [string]$Facebook  = "",
  [string]$Portfolio = "",
  [string]$Project1  = "",
  [string]$Project2  = "",
  [string]$Demo1     = "",
  [string]$Demo2     = ""
)

$root  = $PSScriptRoot
$files = @("$root\README.md", "$root\assets\terminal-card.svg", "$root\assets\architecture.svg")

# ชื่อสำหรับใส่ใน URL ของ capsule-render (เว้นวรรค -> %20)
$nameUrl = [uri]::EscapeDataString($Name)

$map = [ordered]@{
  "YOUR_USERNAME"        = $Username
  "Your%20Name"          = $nameUrl
  "Your Name"            = $Name
  "YOUR_EMAIL"           = $Email
  "YOUR_LINKEDIN"        = $LinkedIn
  "YOUR_INSTAGRAM"       = $Instagram
  "YOUR_YOUTUBE"         = $YouTube
  "YOUR_FACEBOOK"        = $Facebook
  "https://YOUR_PORTFOLIO_URL"   = $Portfolio
  "PROJECT_ONE_DEMO_URL" = $Demo1
  "PROJECT_TWO_DEMO_URL" = $Demo2
  "PROJECT_ONE"          = $Project1
  "PROJECT_TWO"          = $Project2
}

foreach ($f in $files) {
  if (-not (Test-Path $f)) { Write-Warning "ไม่พบไฟล์ $f"; continue }
  $text = [IO.File]::ReadAllText($f, [Text.Encoding]::UTF8)
  foreach ($k in $map.Keys) {
    $v = $map[$k]
    if ($v -ne "") { $text = $text.Replace($k, $v) }
  }
  [IO.File]::WriteAllText($f, $text, (New-Object Text.UTF8Encoding $false))
  Write-Host "✔ อัปเดต $f" -ForegroundColor Green
}

$left = Select-String -Path $files -Pattern "YOUR_|PROJECT_(ONE|TWO)|Your Name" -AllMatches |
        ForEach-Object { $_.Matches.Value } | Sort-Object -Unique
if ($left) {
  Write-Host "`nยังมี placeholder ที่ไม่ได้ใส่ค่า (ลบหรือแก้เองได้ทีหลัง):" -ForegroundColor Yellow
  $left | ForEach-Object { Write-Host "  - $_" }
} else {
  Write-Host "`nเรียบร้อย ไม่เหลือ placeholder แล้ว" -ForegroundColor Green
}
