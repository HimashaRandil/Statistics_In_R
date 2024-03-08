salary <- c(623.3,515.2,611,729,843.25,578,722.50,632.80)

v1 <- c(12, "Sayuni" , TRUE)
v1

a1 <- array(1:15, dim=c(3,3,2))
a1

m1 <- matrix(1:15, 3,3) # max 2d array
m1


l1 <- list("Cat", 12, TRUE, "Sayuni")
l1


d1 <- data.frame()

min(salary)
max(salary)

mean(salary)
median(salary)
range(salary)
IQR(salary)
sd(salary)
var(salary)
quantile(salary)
summary(salary)


data()

mtcars
head(mtcars)
str(mtcars)# passe mathak karanna
summary(mtcars)
summary(mtcars$mpg)
summary(mtcars$gear)
by(mtcars$mpg,mtcars$cyl,var)



person <- list("Sayuni", 19, 5.7, TRUE)
person
names(person)<- c("Name", "Age", "Height" ,"True")
person$Age


EmpID <- c("A", "B","C","D","E")
EmpName <- c("Rick", "Dan", "Michelle", "Ryan", "Gary")
salary <- c(623.3, 515.2, 611.0, 729.0, 843.25)


EmpData <- data.frame(EmpName,salary)
EmpData
row.names(EmpData) <- EmpID
rm( EmpID, EmpName, salary)
str(EmpData)

EmpData$EmpName[2]

EmpData$Dept <- c("IT", "Operations", "IT", "HR", "Finance")
EmpData

summary(EmpData)
by(EmpData$salary,EmpData$Dept, summary)

Students

min(Students$weight)
max(Students$weight)

summary(Students)
by(Students$age, Studnts$gender, summary)

data(mtcars)
head(mtcars)

head(ToothGrowth)
?ToothGrowth
str(ToothGrowth)



library(MASS)
data(Animals)
head(Animals)

install.packages(Ecdat)
library(Ecdat)
data(Accident)


data("ToothGrowth")
head(ToothGrowth)
summary(ToothGrowth$len)
by(ToothGrowth$len, ToothGrowth$supp, summary)

data("iris")
head(iris)
str(iris)
summary(iris)
by(iris, iris$Species,summary)


sapply(iris[,-5], quantile)


install.packages("pastecs")
library(pastecs)
result <- stat.desc(iris[,-5])
round(result,2)





