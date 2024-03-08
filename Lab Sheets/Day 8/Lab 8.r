Name <- c("A1", "B1", "C1")
Sub1 <- c(45,56,78)
Sub2 <- c(78,45,90)
Sub3 <- c(67,87,43)
Marks <- data.frame(Sub1,Sub2,Sub3)
Marks
row.names(Marks) <- Name 
Marks

for(i in 1:nrow(Marks))
{
  total <- Sub1[i]+ Sub2[i]+Sub3[i]
}  
print(paste("The total  is ", total))
for(i in 1:ncol(iris_new))
  
mylist <- list(1:5, letters[3:1],"XXX")

rep(mylist,times = 3)

for(i in 1:length(mylist))
{
  mylist[[i]] <- rep(mylist[[i]],3)
}
mylist
---------------------------------------
mylist <- list(1:5, letters[3:1],"XXX")
----------------------------------------
rep(mylist,times=3)
----------------------------------------
rep(mylist, each =3)
----------------------------------------
for(i in 1:length(mylist))
{
  mylist[[i]] <- rep(mylist[[i]], times=3)
}
mylist
----------------------------------------
mylist <- list(1:5, letters[3:1],"XXX")
for(i in 1:length(mylist))
{
  mylist[[i]] <- rep(mylist[[i]], each=3)
}
mylist

  
  
dice <- 1:6

for(x in dice)
{
  if(x==6)
  {
    print(paste("The dice number is  ",x," Yahtzee!"))
  }
  else
  {
    print(paste("The dice number is  ",x,"not Yahtzee"))
  }
}


team_A <- 1
team_B <- 3
if(team_A>team_B)
{
  print("Teams A will make the playoffs")
}else{
  print("Team B will make the playoffs")
}


# 10 random numbers with mean 1 and sd 3
# check if positive or negative

x <- rnorm(10, mean=1,sd=3)
for(i in x)
{
  if(i>0)
  {
    print(paste("The Value ",i," is positive"))
  }
  else if(i<0)
  {
    print(paste("The Value ",i," is negative"))
  }
  else 
  {
    print(paste("The vlaue is Equal to Zero"))
  }
}


a <- c(5,7,2,9)
ifelse(a%%2==0,"Even","Odd")


matches <- list(c(2,1),c(5,2),c(6,3))
matches


for( match in matches)
{
  if(match[1]>match[2])
  {
    print("Win")
    
  }else{
    print("Lose")
  }
}

Marks

apply(Marks,1,sum) # 1 means row wise 
                   # 2 means column wise 




mapply(rep, 1:3, time=5)





