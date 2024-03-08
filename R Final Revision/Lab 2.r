list_data <- list("Red", c(21,32,11), TRUE, 51.23)
list_data

names(list_data) <- c("Colour", "Vector", "Logical", "Number")
list_data
list_data[1]
list_data[2]
list_data$Vector
list_data[5] <- "New Element"
list_data
names(list_data) <- c("Colour", "Vector", "logical", "Number", "Text")
list_data

list1 <- list(1,2,3,4,5)
list2 <- list(24,545,64,23)
 mergerd.list <- c(list1,list2)
mergerd.list 

v1 <- unlist(list1)
v1
v2 <- unlist(list2)
v2
result <- v1+v2


a1 <- array(1:5, dim=c(1,5))
a1
a2 <- array(1:3, dim=c(3,1))
a2

arr <- array(1:15, dim = c(2,3,2))
arr


arr1 <- array(1:13, dim = c(2,3,2))
arr1


v1 <-  c(2,2,3,4,5)
v2 <-  c(6,7,8,9,10,11,12,13,14)

arr2 <- array(c(v1,v2),  dim = c(2,3,3))
arr2
arr2[,2,1]


a1 <- c(9,18)
a2 <- c(27,36)
r.names <- c("row1", "row2")
c.names <- c("col1", "col2", "col3")
m.names <- c("Arr1", "Arr2")

final <- array(c(a1,a2), dim =c(2,3,2), dimnames = list(r.names,c.names,m.names))
final

a1 <- c(1,2,3,4)
a2 <- c(5,6,7,8,9)


row.names <- c("r1", "r2", "r3")
col.names <- c("c1", "c2", "c3")
arr.names <- c("first")

arr <- array(c(a1,a2), dim=c(3,3,1), dimnames = list(row.names,col.names,arr.names))
arr


arr[1,3,1]
arr[1:2,1:2,1]
arr[,,1]
arr[2,,1]
arr[,2,1]
arr[1,3,1] <- 5
arr



m1  <- matrix(1:15, 3,5)
m1

m2 <- matrix(1:15, 3,5, byrow = TRUE)
m2

m3 <- matrix(1:15 , nrow=3, ncol=3)
m3

rownames <- c("r1", "r2", "r3")
colnames <- c("c1","c2", "c3","c4", "c5")

m3 <- matrix(1:15, nrow=3, ncol=5, byrow=TRUE, dimnames = list(rownames,colnames))
m3

x1 <- diag(1:3)
diag(1,3,3)

m1+m1
m1*m1

x1%*%x1

t(x1)

m6 <- array(c(1,3,2,1), dim = c(2,2))
v1 <- array(c(1,0),dim = c(2,1))
solve(m6,v1)
