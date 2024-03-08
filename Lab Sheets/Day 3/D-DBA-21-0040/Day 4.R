EmpId <- c("A","B", "C", "D", "E")
EmpName <- c("Rick", "Dan", "Michelle", "Ryan", "Gary")
Salary <- c(623.3,515.2, 611.0,729.0,843.25)
EmpData <- data.frame(EmpName, Salary)
EmpData
row.names(EmpData) <- EmpId
EmpData
str(EmpData)

rm(EmpId, EmpName, Salary)
EmpId
EmpData$EmpName
result <- data.frame(EmpData$EmpName, EmpData$Salary)
result
result1 <- EmpData[1:2,]
result1
result2 <- EmpData[c(3,5),1:2]
result2
EmpData$Dept <- c("IT", "Operations", "IT", "HR", "Finance")
EmpData
EmpId <- c("F", "G", "H")
EmpName <- c("Rashmi", "Pranab", "Tusar")
Salary <- c(578.0, 722.5, 632.8)
Dept <- c("IT", "Operations", "Finance")
EmpNewData <- data.frame(EmpName, Salary, Dept)
EmpNewData
row.names(EmpFinalData) <- EmpNewData$EmpId
EmpNewData
EmpFinalData <- rbind(EmpData, EmpNewData)
EmpFinalData
summary(EmpFinalData)
fix(EmpFinalData)
EmpFinalData





x <- 5 
y <- 16
x<y
y<x
x<=5
y>=20
y==16
x!=5
x <- c(2,8,3)
y <- c(6,4,1)
x>y
x<y
X <- c(9,1,5,3,4,10,99)
X[X>5]
X[X>=5]
X[X<4]


x <-c(TRUE,FALSE, 0,6)
!x
y <- c(FALSE,TRUE,FALSE, TRUE)
x&y
x&&y
x|y
x||y

X <- c(9,1,5,3,4,10,99)
X[X>3&X<10]
X[X!=5]
x[X>10|X<5]

#Example

EmpFinalData$Salary <- EmpFinalData$Salary + 100
EmpFinalData$Salary
EmpFinalData$Salary [EmpFinalData$Dept=="Finance"]
row.names(EmpFinalData)[EmpFinalData$Salary>700]
EmpFinalData$Name[EmpFinalData$Dept=="IT" & EmpFinalData$Salary<700 ]


EmpFinalData <- read.table("C:/Users/FOC-CS/Desktop/D-DBA-21-0040/Data.txt",header = TRUE)
EmpFinalData <- read.table("Data.txt",header = TRUE)
EmpFinalData <- read.csv("C:/Users/FOC-CS/Desktop/D-DBA-21-0040/Book1.csv",header = TRUE)
EmpFinalData


library(readxl)

EmpFinalDatac <- read_excel("Book1.xlsx")
EmpFinalData
