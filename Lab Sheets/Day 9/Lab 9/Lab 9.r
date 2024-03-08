#While loops in R

i <- 1
while (i<6)
{
  print(i)
  i=i+1
}


#exercise 1

i <- 1

while(i < 10)
{
  if (i%%2!=0)
  {
    print(i)
    
  }
  i=i+1
}

# exercise 2

i <- 1
s <- 0

while(i<=10)
{
  s=s+i
  i=i+1
}
print(paste("The Sum Is ",s))


# Exercise 3

i <-1
f <-1
while(i<=5)
{
  f=f*i
  i=i+1
  
}
print(paste("The factorial of 5 is",f))



# break in loops 

i <- 1
while(i<6)
{
  print(i)
  {
    i <- i+1
    if(i==4)
    {
      break
    }
  }
}


# next statement with while loop in r

i <-0
while(i<5)
{
  i<-i+1
  if(i==3)
  {
    next
  }
  print(i)
}



# Exercise

i<- 1:5
while(i<=5)
{
  i=i+1
  if(i==3)
  {
    next
  }
  print(i+1)
}


# if else statement with a while loop in R

dice <- 1
while (dice <= 6)
{
  if(dice<6)
  {
    print("No Yahtzee")
  }
  else
  {
    print("Yahtzee!")
  }
  dice<-dice+1
}


# Nesting for loo0ps in while loops 

i <-1 
while(i<=3)
{
  
  i <-i+1
}

for(i in 1:3)
{
  for(j in 1:5)
  {
    print(paste("This is iteration i = ", i, "and j = ",j))
  }
}


#Running while loops through data frame columns

i<-1
while(is.numeric(iris[,i]))
{
  iris[,i]<-iris[,i]+50
  i<-i+1
}
head(iris)


i<-1
while(is.numeric(iris[,i]))
{
  if(grepl("Width", colnames(iris)[i]))
  {
    iris[,i]<-iris[,i]+50
  }

  i<-i+1
}
head(iris)


# Repeat Loop in R

x <-1
repeat
{
  print(x)
  x=x+1
  if(x==6)
  {
    break
  }
}

# Ecxerise 1

x <- 1 
repeat 
{
  print("Hello World")
  x=x+1
  if(x==6)
  {
    break
  }
}


for(i in 1:5)
{
  print("Hello World")
}

# Exercise 2

i <-6
repeat
{
  print(i)
  i=i+1
  if(i==11)
  {
    break
  }
}


# Exercise 3

i <- 1
repeat
{
  if(i%%2==0)
  {
    print(i)
  }
  
  i=i+1
  if(i==11)
  {
    break
  }
}

# Running repeat-loop over data frame columns 

i<- 1
repeat
{
  if(!is.numeric(iris[,i]))
  {
    break
  }
  iris[,i]<-iris[,i]+100
  i<-i+1
}
head(iris)


# next statement with repeat loop 

i<-0
repeat
{
  i=i+1
  if(i==3)
  {
    next
  }
  print(i+1)
  if(i>=5)
  {
    break
  }
}


