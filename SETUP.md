# 🚀 คู่มือติดตั้ง GitHub Profile README

ชุดไฟล์นี้ทำหน้าโปรไฟล์ GitHub ให้เหมือนในคลิป "I turned my GitHub into a ..." ครบทุกส่วน

| ส่วนในคลิป | ไฟล์ / บริการที่ใช้ |
|---|---|
| Banner คลื่นสีไล่ระดับ + ชื่อ | capsule-render (URL ใน README) |
| แถบสถานะ SYS PROFILE VIEWS / CLEARANCE / STATUS | komarev + shields.io |
| ข้อความพิมพ์เองทีละตัว | readme-typing-svg |
| การ์ด Terminal สีเขียวมีเกจ S+ | `assets/terminal-card.svg` (ไฟล์ของเราเอง มีแอนิเมชัน) |
| แผนผัง Pipeline 5 ชั้น | `assets/architecture.svg` (ไฟล์ของเราเอง มีจุดวิ่ง) |
| ไอคอน Tech stack แยก 4 กลุ่ม | skillicons.dev |
| สถิติ GitHub / Streak / Top Languages / กราฟ | github-readme-stats, streak-stats, activity-graph |
| งูกิน contribution | GitHub Action `.github/workflows/snake.yml` |
| Achievements / Trophies | github-profile-trophy |
| การ์ดโปรเจกต์ + ปุ่ม Demo / Source | github-readme-stats pin + shields.io |
| Badge ติดต่อ | shields.io |

---

## ขั้นตอน (ใช้เวลาประมาณ 10 นาที)

### 1) ใส่ข้อมูลของคุณด้วยสคริปต์

เปิด PowerShell ในโฟลเดอร์นี้แล้วรัน (แก้ค่าเป็นของคุณ):

```powershell
.\setup.ps1 -Username "Phawatcharakorn" -Name "Winny" -Email "phawatcharakornit@gmail.com" `
            -LinkedIn "Phawatcharakorn" -Instagram "potato_ps.ps" -YouTube "@Phawatcharakorn" -Facebook "ภวัชรกรณ์ สิงห์เอี่ยม" `
            -Portfolio "https://เว็บของคุณ" `
            -Project1 "ชื่อrepoโปรเจกต์1" -Demo1 "https://ลิงก์demo1" `
            -Project2 "ชื่อrepoโปรเจกต์2" -Demo2 "https://ลิงก์demo2"
```

ใส่แค่ `-Username` กับ `-Name` ก็รันได้ ที่เหลือค่อยมาแก้ในไฟล์ทีหลัง
สคริปต์จะบอกว่าเหลือ placeholder ตัวไหนที่ยังไม่ได้ใส่

> ถ้ารันสคริปต์ไม่ได้ (Execution Policy) ให้ใช้
> `powershell -ExecutionPolicy Bypass -File .\setup.ps1 -Username ... -Name ...`

### 2) สร้าง repo พิเศษบน GitHub

1. ไปที่ https://github.com/new
2. ตั้งชื่อ repo ให้ **ตรงกับ username ของคุณเป๊ะ ๆ** (เช่น username `octocat` → repo ชื่อ `octocat`)
3. เลือก **Public** และติ๊ก **Add a README file** ได้หรือไม่ติ๊กก็ได้
4. GitHub จะโชว์ข้อความว่า "This is a ✨special✨ repository" แปลว่าถูกต้อง

### 3) อัปโหลดไฟล์

**วิธี A: ผ่านหน้าเว็บ (ง่ายสุด)**
เข้า repo ที่สร้าง → Add file → Upload files → ลากไฟล์และโฟลเดอร์ทั้งหมดนี้ไปวาง

- `README.md`
- `assets/` (ทั้งโฟลเดอร์)
- `.github/` (ทั้งโฟลเดอร์ โฟลเดอร์นี้ซ่อนอยู่ ใน Explorer ต้องเปิด "Show hidden items")

**วิธี B: ผ่าน git**

```powershell
cd E:\Claude\Github
git init
git add README.md SETUP.md setup.ps1 assets .github
git commit -m "feat: profile readme"
git branch -M main
git remote add origin https://github.com/Phawatcharakorn/Phawatcharakorn.git
git push -u origin main
```

### 4) เปิดใช้งู contribution (snake)

1. ที่ repo → แท็บ **Settings** → **Actions** → **General**
2. เลื่อนลงไปที่ *Workflow permissions* เลือก **Read and write permissions** → Save
3. ไปแท็บ **Actions** → เลือก workflow **Generate contribution snake** → กด **Run workflow**
4. รอประมาณ 1 นาที จะได้ branch ใหม่ชื่อ `output` แล้วรูปงูจะโผล่บนโปรไฟล์

หลังจากนั้นงูจะอัปเดตเองทุก 12 ชั่วโมง

### 5) ตั้งค่า Achievements ให้โชว์

รูป Achievements (Pair Extraordinaire, Pull Shark, YOLO, Starstruck) ในคลิปเป็นของ GitHub เอง
จะโชว์ที่แถบซ้ายของโปรไฟล์อัตโนมัติเมื่อคุณทำกิจกรรมครบเงื่อนไข เช่น

| Badge | วิธีได้ |
|---|---|
| Pull Shark | มี Pull Request ถูก merge 2 ครั้ง |
| YOLO | merge PR ของตัวเองโดยไม่ต้อง review |
| Quickdraw | ปิด issue หรือ PR ภายใน 5 นาทีหลังเปิด |
| Starstruck | มี repo ได้ 16 ดาว |
| Pair Extraordinaire | commit ที่มี `Co-authored-by:` ใน PR ที่ถูก merge |

---

## ปรับแต่งเพิ่ม

### เปลี่ยน Tech stack
แก้พารามิเตอร์ `i=` ใน URL ของ skillicons.dev ในไฟล์ README.md
ดูรายชื่อไอคอนทั้งหมดที่ https://skillicons.dev เช่น `i=react,vue,flutter,dart,kotlin,swift`

### เปลี่ยนสีธีม
สีหลักของชุดนี้มี 3 สี ค้นหาแล้วแทนได้ทั้งไฟล์

| สี | โค้ด | ใช้ที่ |
|---|---|---|
| เขียวนีออน | `00F5A0` | สีหลัก, วงแหวน, ตัวอักษรเด่น |
| ฟ้า | `00D9F5` | สีรอง |
| ม่วง | `7B61FF` | สีเน้นที่สาม |
| พื้นหลัง | `0D1117` | สีดำแบบ GitHub dark |

### แก้ข้อความในการ์ด Terminal
เปิด `assets/terminal-card.svg` ด้วย text editor แล้วแก้ข้อความในแท็ก `<text>` ได้เลย
ตัวเลข PROJECTS / COMMITS / UPTIME อยู่ท้ายไฟล์

### แก้แผนผัง Pipeline
เปิด `assets/architecture.svg` แต่ละชั้นอยู่ในบล็อก `<!-- Layer 0X -->` แก้ชื่อเทคโนโลยีได้ตามใจ

### เพิ่มโปรเจกต์
ก๊อปบล็อก `<td width="50%" valign="top"> ... </td>` ในส่วน Flagship Engineering Deployments
แล้วเปลี่ยนชื่อ repo และลิงก์ demo

---

## ข้อควรรู้

- **รูปจากบริการภายนอกโหลดช้าครั้งแรก** เพราะ GitHub cache ผ่าน camo ประมาณ 1 ชั่วโมง ถ้าแก้แล้วยังไม่เปลี่ยน ให้รอหรือเพิ่ม `&v=2` ท้าย URL
- **แอนิเมชันใน SVG** ทำงานเฉพาะบน GitHub เว็บ (ไม่ทำงานในแอปมือถือบางรุ่น)
- **github-readme-stats บางครั้งขึ้น "Maximum retries exceeded"** เพราะ rate limit ของเซิร์ฟเวอร์ส่วนกลาง ถ้าต้องการให้เสถียรให้ deploy เองบน Vercel ตามคู่มือ https://github.com/anuraghazra/github-readme-stats#deploy-on-your-own
- **count_private=true** จะนับ commit ใน repo ส่วนตัวก็ต่อเมื่อ deploy เองเท่านั้น
