# HIstrogram in R

Salary <- c(623.3,515.2,611,729,843.25,578,722.50,632.80)

#use to get more graphs in same window
par(mfrow = c(1,3))

#Create the histogram
hist(Salary, xlab="Salary", col="blue", border= "black")
hist(Salary, xlab="Salary", col="blue", border= "black", breaks=2)
hist(Salary, xlab="Salary", col="blue", border= "black", breaks=5)
