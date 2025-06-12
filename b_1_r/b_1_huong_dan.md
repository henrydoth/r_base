tạo file b_1.R từ đầu, viết nội dung script cơ bản, rồi lưu và chạy file ngay trong Git Bash hoặc terminal.

✅ Bước 1: Tạo và mở file b_1.R bằng nano (trình soạn thảo dòng lệnh)
bash
Copy code
nano b_1.R
✅ Bước 2: Dán nội dung sau vào nano
r
Copy code
# b_1.R - Script R đơn giản đầu tiên 🧪

# Tạo một vector
v <- c(1, 2, 3, 4, 5)

# Tính tổng
tong <- sum(v)

# Tính trung bình
trung_binh <- mean(v)

# Hiển thị kết quả
cat("Tổng =", tong, "\n")
cat("Trung bình =", trung_binh, "\n")
✅ Bước 3: Lưu file trong nano
Nhấn Ctrl + O để lưu (write out)

Nhấn Enter để xác nhận tên file (b_1.R)

Nhấn Ctrl + X để thoát

✅ Bước 4: Chạy script trong R console
Vào R:

bash
Copy code
R
Rồi chạy:

r
Copy code
source("b_1.R")
📤 Kết quả mong đợi:

java
Copy code
Tổng = 15 
Trung bình = 3 
