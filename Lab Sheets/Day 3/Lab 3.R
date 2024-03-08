EmpId <- c("A", "B","C","D","E")
EmpName <- c("Rick", "Dan", "michelle", "Ryan","Gary")
Salary <- c(623.3, 515.2, 611.0,729.0,843.25)
EmpData <- data.frame(EmpName,Salary)
row.names(EmpData) <- EmpId
EmpData
str(EmpData)
EmpData[c(3,5),]
EmpData$Dept <- c("IT","Operations","IT","HR","Finance")
EmpData

EmpId <- c("F","G","H")
EmpName <- c("Rasmi", "Pranab","Tusar")
Salary <- c(578.0,722.5,632.8)
Dept <- c("IT", "Operations","Finance")
EmpNewData <- data.frame(EmpName, Salary, Dept)
row.names(EmpNewData) <- EmpId
EmpNewData

EmpFinalData <- rbind(EmpData,EmpNewData)
EmpFinalData

summary(EmpFinalData)

m4 <- rbind()


ID <- c("A01","A02","A03","A04","A05","A06","A07","A08","A09","A10")
Gender <- c("M","F","M","M","F","M","F","M","F","F")
Weight <- c(35,45,56,65,35,30,45,60,52,50)

student <- data.frame(ID,Gender,Weight)

a1 <- array(1:15, dim=c(3,5))
a1

arr <- array(2:13, dim=c(2,3,2))
arr


array1 <- c(9,18)
array2 <- c(27,36)

r.names <- c("row1","row2")
c.names <- c("column1","column2","column3")
m.names <- c("Arr1","Arr2")
final <- array(c(array1,array2), dim=c(2,3,2), dimnames = list(r.names,c.names,m.names))
final


a1 <- c(1,2,3,4)
a2 <- c(5,6,7,8,9)

r.names<- c("r1","r2","r3")
c.names<- c("c1","c2","c3")
m.names<- c("first")

final_1 <-  array(c(a1,a2),dim=c(3,3,1),dimnames=list(r.names,c.names,m.names))
final_1


final_1[1,3,1]
final_1[1:2,1:2,1]


m1 <- matrix(1:15,3,5)
m1

m2 <- matrix(1:15, nrow = 3, ncol=3)
m2
