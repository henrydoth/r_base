stats <- data.frame(
  mean = sapply(mtcars, mean),
  sd = sapply(mtcars, sd),
  min = sapply(mtcars, min),
  max = sapply(mtcars, max)
)
write.csv(stats, "mtcars_sum_tinhtoan.csv")
cat("Tôi đã lưu mtcars_summary.csv\n")