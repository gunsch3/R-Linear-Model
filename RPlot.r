

args <- commandArgs(trailingOnly = TRUE)

png('orig.png')

data=read.csv(args[1])
plot(x = data$x,y = data$y, xlab = "x axis", ylab = "y axis", main = "Plot")

dev.off()

png('lm.png')

data=read.csv(args[1])
plot(x = data$x,y = data$y, xlab = "x axis", ylab = "y axis", main = "Plot")
abline(lm(y ~ x, data), col = "blue")

dev.off()


