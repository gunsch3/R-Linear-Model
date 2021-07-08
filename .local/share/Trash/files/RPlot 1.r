args <- commandArgs(trailingOnly = TRUE)

data=read.csv(args[1])

plot(x = data$x,y = data$y, xlab = "x axis", ylab = "y axis", main = "Plot")

dev.copy(png,'orig.png')
dev.off()

abline(lm(y ~ x, data), col = "blue")

dev.copy(png,'lm.png')
dev.off()


