rm(list=ls(all=TRUE))
house <- read.csv("/Users/ÀÌÀ¯Á¤/Desktop/house.csv")

install.packages("ggplot2")
library(ggplot2)

x2 <- house$X1
y1 <- house$Y1
y2 <- house$Y2

qplot(house$X2, house$Y1, size=y2)