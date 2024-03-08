
i <- 1
while(i<6)
{
  print(i)
  i = i+1
}

i <- 1
while(i<10)
{
  if(i%%2!=0)
  {
    print(i)
  }
  i = i+1
}

i <- 1
total <- 0
while(i<=10)
{
  total <- total+i
  i <- i+1
}
print(total)


i<-1
fact <- 1
while(i<=5)
{
  fact<-fact*i;
  i<-i+1
}

print(fact)

i <- 1

while(i<=5)
{
  
  
  if(i==3)
  {
    break
  }
  i <- i+1
  print(i+1)
}


i <- 1
while(i<=5)
{
  if(i==3)
  {
    i <- i+1
    next
  }
  print(i)
  i <- i+1
}

i <- 1
while(i<=6)
{
  if(i==6)
  {
    print("Yahtzee")
    i<-i+1
  }else{
    print("no Yahtzee")
    i<-i+1
  }
}


i <- 1
while(i<=3)
{
  for(j in 1:5)
  {
    print(paste("This is iteration i=",i,"j=",j))
  }
  i<-i+1
}

i <- 1
repeat
{
  print("Hello World")
  i <- i+1
  if(i==6)
  {
    break
  }
}

i <-1
repeat
{
  if(i%%2==0)
  {
    print(i)
    i<-i+1
  }else{
    i<-i+1
  }
  
  if(i==11)
  {
    break
  }
}

