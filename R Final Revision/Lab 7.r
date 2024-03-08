multi <- function(a,b)
{
  z <- a*b
  print(paste("The product is ",z))
}

multi(2,3)


pow <- function(x,y)
{
  result <- x^y
  result
  print(paste("The result is ", result))
}


pow(2,3)

MEAN <- function(x)
{
  M <- sum(x)/length(x)
  print(paste("The Mean of The Data Set Is ", M))
}


y <- c(1,5,4,2,8,6,7,9,10)
x <- rnorm(50, mean =2, sd=1)
MEAN(y)
x
MEAN(x)

temp <- function(f)
{
  c <- (f-32)*(5/9)
  print(paste("The temperature in cecius is : " ,c))
}


temp(98)



x <- c(1:10)
x
x <- 1:10
x
MEAN <- function(x)
{
  M <- sum(x)/length(x)
  M
  
}

SD <- function(x)
{
  z <- sum((x-MEAN(x))^2)
  z
}

SD(x)


for( d in 1:5 )
{
  print(d)
}


for(i in 1:20)
{
  print(i)
}

for(i in 1:10)
{
  print(i^2)
}

week <- c ("Sunday", "Monday" , "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")

for( day in week)
{
  print(day)
}


year <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")

for(month in year)
{
  print(month)
}

names <- c("Max", "Tina", "Lindsey", "Anton", "Sharon")

for( n in names)
{

  print(paste("The name " , n ," has ", nchar(n)," characters"))  
}



for(i in 1:3)
{
  for(j in 1:2)
  {
    print(paste("i=",i, " j=",j))
  }
}


for(i in 1:5)
{
  for(j in 1:2)
  {
    print(i*j)
  }
}



for(i in 0:4)
{
  for(j in 0:2)
  {
    cat(paste("(",i,",",j,")"), sep="")
  }
  cat(sep="\n")
}


x <- c(2,5,3,9,8,11,6)
count <- 0

for(i in x)
{
  if(i%%2==0)
  {
    count <- count +1
  }
}

count

res <- matrix(nrow=4,ncol=4)

for(i in 1:nrow(res))
{
  for(j in 1:ncol(res))
  {
    res[i,j]=i*j
  }
}

print(res)


x <- 1:5
for(i in x)
{
  if(i ==3)
  {
    break
  }
  print(i)
}


for(i in x)
{
  if(i == 2)
  {
    next
  }
  print(i)
}


for(i in 1:10)
{
  if(i>4)
  {
    break
  }
  print(i^2)
  
}


for(i in 1:10)
{
  if(i==1||i==5||i==7)
  {
    next
  }
  print(i^2)
}