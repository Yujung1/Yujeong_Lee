

house <- read.csv("/Users/ÀÌÀ¯Á¤/Desktop/house.csv")

ye.model <- lm(Y2~X1, data=house)
housepred <- predict(ye.model, house)
plot(house$X1,house$Y2)
points(house$X1, housepred, col="blue", pch=16)
lines(house$X1, housepred, col="pink")


newhouse <- data.frame(X1 = seq(1,25,0.5))
newhouse$pred <- predict(ye.model, newhouse)
plot(newhouse$X1,newhouse$pred)
points(newhouse$X1,newhouse$pred,col="green")
lines(newhouse$X1,newhouse$pred)
      