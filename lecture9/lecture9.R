#Regression

#1
first <- c(20,32,35,34,40,51,52,56,57,58)
second <- c(23,34,36,44,42,51,54,57,54,62)
#1-a
plot(first, second, xlab="	relationship	between	first	and	second	visit	dollar	amounts")

#1-b
#there is positive strong relationship and linear 
#1-c
r <- cor(c1,c2)
SE <- sqrt((1-r^2)/((length(c1)-2))
           #1-d
           #standard error is considered the level of error (dispersion) of your data from a population mean
           #1-e
           rt <- cor.test(c1,c2)
           rt$conf.int
           #0.87~0.99
           
           #2a
           #relationship	between	adding	$30	to	each	of	the	observations is positive relationship
           #2b
           c1b <- c1 + 30 
           c2b <- c2 + 30
           cor(c1b,c2b)
           
           #3a
           b1 <- C(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
           b2 <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,25,65)
           plot(b1,b2)
           
           #3b
           m <- lm(b2-b1)
           abline(m)
           
           #3c
           #answer : b  9.955, a=1.280, SE=2.766, t=3.6, df=18, P= 0.002
           summary(m)
           a <- m$coefficients[1]
           b <- m$coefficients[2]
           
           a = 1.28047
           b = 9.955187
           b3 <- mat.or.vec(20,1)
           for(i in 1:length(b3)){
             b3[i] = b*b1[i] + a
           }
           
           point(b1,b3,col="red")
           
           #3d
           b1p <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
           b2p <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,25,65)
           mp <- lm(b2p-b1p)
           abline(mp)
           summary(mp)