# Scatter Plot in r

mtcars
plot(mtcars$wt,mtcars$mg, Xlab="Weight", ylab="Milage", main= "Weight vs Milage")

#plot the chart for cars with weight betwee 2.5 to 5 and 
#milage between 15 to 30

plot(mtcars$wt, mtcars$mpg, xlab="Weight", ylab= "Milage" ,xlim = c(2.5,5), ylim= c(15,30), main="Weight vs Milage", pch=19, col= "red") #Chang the pattern use for the data set 

abline(lm(mtcars$mpg ~ mtcars$wt, data = mtcars),col="blue")
