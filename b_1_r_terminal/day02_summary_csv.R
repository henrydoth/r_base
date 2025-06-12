# 📄 day02_summary_csv.R
summary_stats <- summary(mtcars)
write.csv(summary_stats, "mtcars_summary.csv")
cat("✅ Đã lưu mtcars_summary.csv\n")
