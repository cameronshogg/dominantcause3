# Cleaning up the Workspace
rm(list = ls())
dev.off()
cat("\014")

# Pulling In Data from the Assembly CSV
variation <- read.csv("domcause3.csv", header=T)
# 
# main_model = lm(variation$y100 ~ variation$x16+variation$x17+variation$x19+
#                   variation$x20+variation$x21+variation$x22+variation$x23)
# 
# summary(main_model)
# 
# library(stats)
# 
# # Sigma is useful for extracting the RSD from the lm() summary. It is incorrectly identified in the summary as Residual
# # Standard Error, but this value is correct for an RSD value
# 
# sigma(main_model, use.fallback = TRUE)
# 
# 
# main_model = lm(variation$y100 ~ variation$x16)
# 
# summary(main_model)
# 
# summary(lm(variation$y100 ~ variation$x23))

#plot(variation$y100 ~ variation$x23, xlab = "x23", ylab = "y100", col = "forestgreen")

plot(variation$y100 ~ variation$x23, col = "forestgreen")

main_model = lm(variation$y100 ~ variation$x21)

summary(main_model)

