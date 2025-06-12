# 📈 day03_plot_hist.R
png("hist_mpg.png")
hist(mtcars$mpg, main = "Histogram MPG", col = "skyblue")
dev.off()
cat("🖼️ Đã lưu hist_mpg.png\n")
