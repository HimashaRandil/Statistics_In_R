# box plot in r

boxplot(mtcars$mpg)

boxplot(mtcars$mpg, main= "Car Details Data", xlab="mtcars$mpg", ylab="mtcars", col="orange", border="brown", horizontal=TRUE)

boxplot(mpg`cyl, data=mtcars, main="Car details Data", xlab= "Number of Cylinders", ylab="mpg", col="orange", border="brown")
