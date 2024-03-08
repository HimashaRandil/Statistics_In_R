list_data <- list("Red", c(21,32,11), TRUE, 51.23)
list_data
names(list_data) <-  c("Color", "Vector", "Logial", "Number")
list_data
list_data[1]
list_data[2]
list_data[3]
list_data$Vector
list_data[5] <- "New Element"
list_data
list_data[4] <- NULL
list_data
merged.list <-c(list1, list2)

list1 <- list(1:5)
list1
list2 <- list(10:14)
list2
merged.list <- c(list1, list2)
merged.list
v1 <- unlist(list1)
v1
v2 <- unlist(list2)
v2
result <- v1 + v2
result
a1 <- array(1:5, dim = c(1,5))
a1
a2 <-array(1:3, dim = c(3,1) )
a2
m1 <- array(1:15, dim = c(3,5))
m1
arr <- array(2:13, dim = c(2,3,2))
arr

array1 <- c(5,10,15,20)
array2 <- c(25,30,35,40,45,50,55,60)

final <- array (c(array1,array2), dim= c(4,4,3))
final


list_1 <- list("animal", FALSE, c(22,5,15))
list_2 <- list(TRUE, c(25,30,35), 22.3)
merged.list1 <- c(list_1,list_2)
merged.list1

final <- array(c(array1,array2), dim = c(4,3,3))
final


final1 <- array(c(array1,array2), dim = c(3,3,3))
final1


array1 <- c(9,18)
array1

array2 <- c(27, 36)
array2

r.names = c("row1", "row2")
r.names

c.name = c("column1", "column2", "column3")
c.name

m.name = c("Arr1", "Arr2")

final_arr <- array (c(array1,array2), dim=c(2,3,2))
final_arr

A1 <- c(1,2,3,4)
A1
A2 <- c(5,6,7,8,9)
A2

Arr <- array (c(A1,A2), dim = c(3,3,1))
Arr

colnames(Arr) <- c("C1", "C2", "C3")
rownames(Arr) <- c("R1", "R2", "R3")

Arr

m1 <- array(1:15, dim = c(3,5))
m1

m2 <- matrix(1:15, nrow=3,ncol=3)
m2

m3 <- 1:15
dim(m3) <- c(3,5)
m3

m4 <- cbind(1:3,4:6,5:7)
m4

m5 <- rbind(1:3, 4:6)
m5

mdiag(3)
diag(1:3)

? matrix

m3[1,2]

m3[1,]

m3[ ,2]

rowSums(m1)
colSums(m1)

m1+m1
m1-m2

3*m1
m1*m2

t(m1)

m6 <- array(c(1,3,2,1), c(2,2))
m6

v1 <- array(c(1,0), c(2,1))
v1


solve(m6,v1)
solve(m6)
solve(m6)%*%v1
