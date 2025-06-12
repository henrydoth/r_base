ÔN TẬP GIT – DỰ ÁN r_base
Bạn sẽ nắm được:

✅ Tạo Git repo từ thư mục sẵn có

✅ Kết nối với GitHub

✅ Commit và push

✅ Đổi nhánh master thành main

✅ Xóa nhánh cũ

✅ Xử lý lỗi thường gặp

📦 1. Tạo repo Git và kết nối GitHub
bash
Copy
Edit
cd /d/GitHub/r_base        # Vào thư mục dự án

git init                   # Khởi tạo Git repo
git remote add origin https://github.com/henrydoth/r_base.git
git remote -v              # Kiểm tra kết nối
✏️ 2. Thêm và commit nội dung
bash
Copy
Edit
git add .
git commit -m "📝 Add all practice scripts for R and Bash"
🚀 3. Push nhánh đầu tiên lên GitHub
Nếu bạn muốn giữ master:
bash
Copy
Edit
git push -u origin master
Nếu bạn muốn dùng main:
bash
Copy
Edit
git branch -M main
git push -u origin main
🔁 4. Đổi nhánh mặc định trên GitHub
Truy cập: https://github.com/henrydoth/r_base/settings/branches

Nhấn Edit

Đổi Default branch từ master → main

🗑️ 5. Xoá nhánh master sau khi đổi
bash
Copy
Edit
git push origin --delete master
❗ Không thể xóa nếu master còn là nhánh mặc định

🛠 6. Một số lệnh kiểm tra & hỗ trợ
bash
Copy
Edit
git status            # Kiểm tra trạng thái
git branch            # Xem nhánh hiện tại
git log --oneline     # Xem lịch sử commit ngắn gọn
git remote -v         # Kiểm tra kết nối GitHub
⚠️ Lỗi thường gặp & cách xử lý
Lỗi	Nguyên nhân	Giải pháp
fatal: not a git repository	Chưa git init	Chạy git init
error: src refspec main does not match any	Bạn đang ở master	Dùng git push origin master hoặc git branch -M main
refusing to delete current branch	Bạn đang cố xóa nhánh mặc định	Đổi default branch trên GitHub trước

📘 Tài nguyên thêm (nếu muốn luyện sâu)
GitHub Learning Lab

git-scm.com/docs

Lệnh cấu hình mặc định:

bash
Copy
Edit
git config --global user.name "henrydoth"
git config --global user.email "your_email@example.com"
git config --global init.defaultBranch main
Bạn muốn mình tạo bản PDF hoặc Markdown README_git_guide.md để lưu lại bài ôn này trong repo không? 😎







You said:
có


ChatGPT said:
Tuyệt! Dưới đây là nội dung đầy đủ cho file README_git_guide.md – bài ôn Git tổng hợp cho dự án r_base, được trình bày rõ ràng để bạn lưu trong repo hoặc chia sẻ 🎓

📘 README_git_guide.md
markdown
Copy
Edit
# 📚 Hướng dẫn Git – Ôn tập theo dự án `r_base`

Đây là tài liệu ôn tập Git thực hành, dựa trên quy trình đẩy project `r_base` lên GitHub:  
👉 https://github.com/henrydoth/r_base

---

## 🧩 1. Khởi tạo Git và kết nối GitHub

```bash
cd /duong/dan/thu_muc/r_base
git init
git remote add origin https://github.com/henrydoth/r_base.git
git remote -v
📥 2. Thêm và commit nội dung
bash
Copy
Edit
git add .
git commit -m "📝 Add all practice scripts for R and Bash"
🚀 3. Push nhánh đầu tiên
Nếu đang dùng master:
bash
Copy
Edit
git push -u origin master
Nếu muốn đổi sang main:
bash
Copy
Edit
git branch -M main
git push -u origin main
⚙️ 4. Đổi nhánh mặc định trên GitHub
Truy cập: https://github.com/henrydoth/r_base/settings/branches

Nhấn "Edit" tại Default branch

Chọn main, bấm Update

🗑️ 5. Xoá nhánh master sau khi chuyển sang main
bash
Copy
Edit
git push origin --delete master
⚠️ Phải đổi Default branch trước khi xóa!

🛠️ 6. Các lệnh hỗ trợ
bash
Copy
Edit
git status
git branch
git log --oneline
git remote -v
❗ 7. Lỗi thường gặp
Lỗi	Nguyên nhân	Cách khắc phục
not a git repository	Chưa git init	Chạy git init
src refspec main does not match	Chưa có nhánh main	Đổi tên nhánh: git branch -M main
refusing to delete current branch	Đang cố xóa nhánh mặc định	Đổi default branch trên GitHub

🧠 8. Cấu hình Git toàn cục (khuyên dùng)
bash
Copy
Edit
git config --global user.name "henrydoth"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main
✅ Thành quả
 Đẩy dự án lên GitHub thành công

 Quản lý nhánh chuẩn với main

 Làm chủ Git cơ bản trong dự án thực tế 🎯

yaml
Copy
Edit

---

## ✅ Cách lưu file này vào repo

Chạy trong terminal:

```bash
cat > README_git_guide.md << "EOF"
(paste nội dung ở trên vào đây hoặc để mình tạo sẵn)
EOF

git add README_git_guide.md
git commit -m "📘 Add Git learning guide"
git push