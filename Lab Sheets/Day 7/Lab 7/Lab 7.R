x <- c(3,6,2,8,5,9,3,7,1,4,22,1,11,7,4,9,4,3,7)

mean_function <-function(x)
{
  mean <- sum(x)/length(x)
}

a= 5
b= 10

new.function <- function(a,b)
{
  result <- a*b
  result
}


new.function.1 <- function(a,b,c)
{
  result <-  a*b +c
  result
}

new.function.1(4,5,2)


pow <- function(x,y)
{
  result <- x^y
  print(result)
  print(paste(x,"raised to the power ", y, "is", result))
}

pow(2,3)
pow(4,5)



x <- c(1,5,4,2,8,6,7,9,10)
mean(x)

MEAN <- function(x)
{
  M <- sum(x)/length(x)
  M
}

MEAN(x)


converter <- function(f)
{
   C = (f-32)*(5/9)
   print(paste("The Temperature is ",C,"C"))
}

x <- c(32,50)
x
converter(x)

y <- 2
g <- function(x)
{
  x*y
}

f <- function(x)
{
  y^2 +g(x)
}

f(3)

MEAN <- function(x)
{
  M <- sum(x)/length(x)
  M
}

SSD <- function(x)
{
  ssd <- sum((x-MEAN(x))^2)
  print(paste("The Sum Of Squares Of Deviation Is ",ssd))
}

x <- c(1:10)
SSD(x)

d <- c(45,56,78,78,45,90,67,87,43)
a <- array(d, dim<-c(3,3))
a

marks <- data.frame(a)
marks


Sub1 <- c(45,56,78)
Sub2 <- c(78,45,90)
Sub3 <- c(67,87,43)

marks <- data.frame(Sub1,Sub2,Sub3)
marks

Name <- c("A1", "B1", "C1")

row.names(marks) <- Name
marks


total <- function(row)
{
  t <- sum(row)
  t
}

row1 <- marks[1,]
row2 <- marks[2,]
row3 <- marks[3,]

print(paste("The total marks Of A1 student is ",total(row1) ))
print(paste("The total marks Of B1 student is ",total(row2)))
print(paste("The total marks Of C1 student is ",total(row3)))

total(row2)
total(row3)


# LOOPS

for(i in 1:5)
{
  print(i)
}

for(i in 1:20)
{
  print(i)
}

for(i in 1:10)
{
  s <- i^2
  print(s)
}


week <- c("Sunday","Monday", "Tuesday", "Wednesday","Thursday", "Friday", "Saturday")

for(day in week)
{
  print(day)
}

Year <- c("January", "February", "March", "April", "May", "June", "July", "August", "September","October", "November", "December")

for(months in Year)
{
  print(months)
}

Names <- c("Max", "Tina", "Anton", "Sharon")


for(s1 in Names)
{
  print(paste(s1, " Has ", nchar(s1), "Characters"))
}


# Nested for Loops in R

for(i in 1:3)
{
  for(j in 1:2)
  {
    print(paste("i =", i,"j =",j ))
  }
}


for(i in 1:5)
{
  for(j in 1:2)
  {
    print(i*j)
  }
}

for(i in 0:3)
{
  for(j in 0:2)
  {
    print(paste("(",i,",",j,")"))
  }
  print(" ")
    
}


res <- matrix(nrow=4, ncol=4)
for(i in 1:nrow(res))
{
  for(j in 1:ncol(res))
  {
    res[i,j]=i*j
  }
}

print(res)


x <- c(2,5,3,9,8,11,6)

cont <- 0
for(val in x)
{
  if(val%%2==0)
    cont =cont+1;
}
print(cont)


x<- 1:5
for (i in x)
{
  if(i==3)
  {
    break
  }
  print(i)
}

for(i in 1:10)
{
  if(i==1 || i==5 || i==7)
  {
    next
  }
  print(i^2)
    
}