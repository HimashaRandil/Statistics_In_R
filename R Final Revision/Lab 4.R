# Pie Charts

x <- c(40,15,30,50,20,35)
lables <- c("apple", "kiwi", "Grapes", "Bananas", "Pear", "Orange")
pie(x,lables)

pie(x, lables, main="Favourite fruit pie chart", col=rainbow((length(x))))
pie(x,lables, main="Favourite fruit pie chart", col=c("red","orange","yellow","blue","green","purple"))

# Exercise 

piepercent <- round(x/sum(x)*100,1)
lbls <- paste(piepercent, "%")

pie(x,lables=lbls,main="Favourite fruit pie chart", col=rainbow(length(x)), legend("topright",c("apple","kiwi","grape","banana","pear","orange"),cex=0.8))


# Bar Chart

x <- c(40,15,30,50,20,35)
x
labels <- c("apple","kiwi","grape","banana","pear","orange")
barplot(x,names.arg=labels, xlab="Fruit", ylab="No of Respondendts", col="blue", main="Favourite fruit chart", border="red")





Gender <- c("Male","Female")
Fruit <- c("apple","kiwi","grape","banana","pear","orange")
values <- matrix(c(18,5,18,30,12,15,22,10,12,20,8,20), nrow = 2, ncol=6, byrow=TRUE)
colors = c("blue","green")
barplot(values,names.arg = Fruit, main="Favourite fruit chart",  xlab="Fruit", ylab="No of Responents", col=colors)



boxplot(mpg~ cyl,data=mtcars, main ="Car Details Data", xlab="mtcars$mpg", ylab="mtcars", col="blue",horisontal=TRUE)


plot(mtcars$wt,mtcars$mpg,main="Weight vs Millage", xlab="mtcars$wt",ylab = "mtcars$mpg",xlim = c(2.5,5), ylim=c(15,30))
