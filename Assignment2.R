#1-a. 
s1 = c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)
mean(s1) 

#1-b
 #yes. because estimate	in	part(a) is estimate of the	population	parameter.

#1-c Calculate	the	standard	error	for	your	sample	estimate.
se <-  function(s1) sd(s1)/sqrt(length(s1)) #the	standard	error : 1.976529

#1-d What	does	the	quantity	in	part(c)	measure?
se(s1)

#1-e Calculate	a	95%	confidence	interval	for	the	population	mean.
t.test(s1)
 #a	95%	confidence	interval : 88.15754 96.24246

#1-f Provide	an	interpretation	for	the	interval	you	calculated	in	part	(e).
 #a	95%	confidence	interval : 88.15754 96.24246, I find out that through t.test


#2
male <- c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
female <- c(223.4,221.5,230.2,224.3,223.8,230.8)

t.test(male,female,alternative="less",var.equal=TRUE)

#3
 # (a) false There can be meaningful difference in recovery of patients.
 # (b) ture
 # (c) false We do't find Type I error
 # (d) false Type II error is the failure to reject a false null hypothesis
 # (e) false significance	level	is 5% and a	P-value	is 0.04


#4
personA <- c(248,236,269,254,249,251,260,245,239,255)
personB <- c(380,391,377,392,398,374)
pA2 <- 1.5*personB

layout(matrix(2:1,ncol = 1))
hist(pA2,xlim = c(350,410))
hist(personB,xlim = c(350,410))


#5
 #Standard deviation is a measure of dispersion within your data set whereas standard error is considered the level of error (dispersion) of your data from a population mean.
#example data : data of Q1
sd(s1) #10.82589
se(s1) #1.976529

