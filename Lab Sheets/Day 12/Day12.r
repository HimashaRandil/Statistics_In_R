head(iris,1)

corr.fun <- function(data,idx)
{
  df <- data[idx,]
  c(cor(df[,3],df[,4],method="spearman"))
}  
corr.fun(iris)
library(boot)
bootstrap <- boot(iris,corr.fun,R=1000)
bootstrap


boot(data=iris, statistics = corr.fun, R=1000)

plot(bootstrap)

boot.ci(boot.out = bootstrap,type=c("norm", "basic","perc", "bca"))


#Exercise 1
med.fun<- function(data,idx)
{
  df<-data[idx,]
  c(median(df[,1]))
}

med.fun(iris)
bootstrap<-boot(iris, med.fun, R=1000)
bootstrap
plot(bootstrap)
boot.ci(boot.out=bootstrap, type=c("norm","basic","perc","bca"))

#Exercise 2
head(iris,1)
mn.fun<-function(data,idx)
{
  df<-data[idx,]
  c(mean(df[,4]))
}
mn.fun(iris)
bootstrap<-boot(iris,mn.fun, R=1000)
bootstrap
plot(bootstrap)
boot.ci(boot.out=bootstrap, type=c("norm","basic","perc","bca"))


#Exercise 3

student <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
lsat <- c(576,635,558,578,666,580,555,661,651,605,653,575,545,572,594)
gpa <- c(3.39,3.30,2.81,3.03,3.44,3.07,3.00,3.43,3.36,3.13,3.12,2.74,2.76,2.88,2.96)


stud_data <- data.frame(student, lsat, gpa)
stud_data

corr.fun1<-function(data, idx)
{
  df<- data[idx,]
  c(cor(df[,2],df[,3],method='spearman'))
}  
corr.fun1(stud_data)


bootstrap<-boot(stud_data, corr.fun1, R=1000)
bootstrap
plot(bootstrap)
boot.ci(boot.out=bootstrap, type=c("norm","basic","perc","bca"))
