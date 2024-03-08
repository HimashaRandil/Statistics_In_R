#view the first row of the iris data set
head(iris,1)
#custom function for find correlations 
corr.fun <- function(data,idx){
  df<-data[idx,]
  #find the correlation between 3rd and 4th columns
  c(cor(df[,3],df[,4],method = "spearman"))
}
corr.fun(iris)
install.packages("boot")
library(boot)
bootstrap <- boot(iris,corr.fun,R=1000)
bootstrap
plot(bootstrap)
boot.ci(boot.out = bootstrap,type=c("norm","basic","perc","bca"))

#exercise 01
head(iris,1)
median.fun<- function(data,idx){
  dt<-data[idx,]
  c(median(dt[,1]))
}
median.fun(iris)
bootstrap<- boot(iris,median.fun,R=1000)
bootstrap
plot(bootstrap)
boot.ci(boot.out = bootstrap,type = c("norm","basic","perc","bca"))

#exercise 02
head(iris,1)
mean.fun<- function(data,idx){
  dt<-data[idx,]
  c(mean(dt[,4]))
}
mean.fun(iris)
bootstrap<- boot(iris,mean.fun,R=1000)
bootstrap
plot(bootstrap)
boot.ci(boot.out = bootstrap,type = c("norm","basic","perc","bca"))


#Exercise 3
student<-c(1,2,3,4,5,6,7,8,9,10,12,13,14,15)
last <-c(576,635,558,578,666,580,555,661,651,605,653,575,545,572,594)
gpa <-c(3.39,3.30,2.81,3.03,3.44,3.07,3.00,3.43,3.36,3.13,3.12,2.74,2.76,2.88,2.96)
length(gpa)
length(last)
studentdata <- data.frame(last,gpa)
studentdata
corr.fun <- function(data,idx){
  df<-data[idx,]
  #find the correlation between 3rd and 4th columns
  c(cor(df[,1],df[,2],method = "spearman"))
}

corr.fun(studentdata)
bootstrap <- boot(studentdata,corr.fun,R=1000)
plot(bootstrap)
boot.ci(boot.out = bootstrap,type = c("norm","basic","perc","bca"))