
# Ôn tập R trong WSL và Docker 🚀

## 1. Chạy R trong WSL
```bash
sudo apt update
sudo apt install r-base
R --version
R
```

## 2. Tạo file R và chạy bằng Rscript
```bash
nano day01_mean_sd.R
Rscript day01_mean_sd.R
```

**Ví dụ nội dung `day01_mean_sd.R`:**
```r
x <- c(12, 15, 18, 20, 25)
cat("Giá trị:", x, "\n")
cat("Trung bình =", mean(x), "\n")
cat("Độ lệch chuẩn =", sd(x), "\n")
```

## 3. Một số lệnh thư mục cần nhớ
```bash
ls           # Liệt kê file/thư mục
cd thư_mục   # Di chuyển vào thư mục
mv           # Di chuyển hoặc đổi tên
cp           # Sao chép file
rm           # Xoá file
mkdir        # Tạo thư mục
```

## 4. Dùng Docker để chạy R script

### Dockerfile
```Dockerfile
FROM r-base
COPY day01_mean_sd.R /home/
CMD ["Rscript", "/home/day01_mean_sd.R"]
```

### Build và chạy
```bash
docker build -t rscript-app .
docker run --rm rscript-app
docker run --rm -v "$PWD":/home rscript-app
```

## 5. Đẩy lên GitHub
```bash
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/henrydoth/docker_r_base.git
git push -u origin main
```

## 6. Đẩy Docker image lên Docker Hub
```bash
docker login
docker tag rscript-app henrydoc/rscript-app:latest
docker push henrydoc/rscript-app:latest
```

---

✅ **Kết quả:** Bạn đã build image `rscript-app`, đẩy lên [Docker Hub](https://hub.docker.com/repository/docker/henrydoc/rscript-app) và sử dụng thành thạo Docker + WSL + R 🎉
