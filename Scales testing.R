install.packages("scales")
library(scales)

install.packages("scales-package")
library(scales-package)

?scales

set.seed(205)
n <- 100
dat10 <- data.frame(
  xval = (1:n+rnorm(n,sd=5))/20,
  yval = 10*10^((1:n+rnorm(n,sd=5))/20)
)

sp10 <- ggplot(dat10, aes(xval, yval)) + geom_point()

plot(sp10)

# log10
plot(sp10 + scale_y_log10())

# log10 with exponents on tick labels
plot(sp10 + scale_y_log10(breaks = trans_breaks("log10", function(x) 10^x),
                     labels = trans_format("log10", math_format(10^.x)))
)
