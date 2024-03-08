
x <- c(17.6,20.6,22.2,15.3,20.9,21.0,18.9,18.9,18.9,18.2)

shapiro.test(x)

res <- t.test(x,mu=25)
res

res$statistic
res$parameter
res$p.value
res$conf.int
res$estimate


#Exercise 1

x <- rnorm(30, mean=9.8, sd=0.05)

res <- t.test(x, mu=10, alternative = "greater")
res

res$statistic
res$parameter
res$conf.int
res$p.value
res$estimate

install.package(datarium)
library(datarium)
data("mice")
head(mice)
str(mice)
x <- mice
x

shapiro.test(x$weight)

res <- t.test(x$weight, mu=25)
res




#Two independent samples tTesti R

women_weight <- c(38.9,61.2,73.3,21.8,63.4,64.6,48.4,48.8,48.5)
men_weight <- c(67.8,60,63.4,76,89.4,73.3,67.3,61.3,62.4)

group <- rep(c("women","men"), each=9)
group
weight <- c(women_weight,men_weight)
weight

data <- data.frame(group,weight)
data


with(data,shapiro.test(weight[group=="men"]))
#therefore normaly distributed

with(data,shapiro.test((weight[group=='women'])))
#therefore normally distributed

ftest <- var.test(weight~group,data=data)
ftest

res <- t.test(women_weight, men_weight, var.equal = TRUE)
res





# Exercise 1

cl <- rnorm(50, mean=250, sd=75)
ny <- rnorm(50, mean=300, sd=80)

ftest <- var.test(cl,ny)
ftest

res <- t.test(cl,ny,var.equal = TRUE)
res

library(datarium)
data("genderweight")
head(genderweight)
str(genderweight)
summary(genderweight)

data <- genderweight

with(data, shapiro.test(weight[group=="F"]))
#mean is coming from normally distributed population

with(data, shapiro.test(weight[group=="M"]))
#mean is coming from normally distributed population

ftest <- var.test(weight~group,data=data)
ftest
# therefore the variences are not equal

res <- with(data, t.test(weight[group=="F"], weight[group=="M"], var.equal = FALSE))
res
# means difference is not equal to zero




# Paied Sample T-Test

# Example 1

pre_treatment <- rnorm(2000, mean= 150, sd= 10)
post_treatment <- rnorm(2000, mean=144, sd=9)

ftest <- var.test(pre_treatment,post_treatment)
ftest
#varience is different

res <- t.test(pre_treatment,post_treatment,alternative = "greater" ,paired = TRUE, var.equal = FALSE)
res



# Example 2

before <- c(200.1,190.9, 192.7, 213, 241.4, 196.9, 172.2, 185.5,205.2,193.7)
after  <- c(392.9, 393.2, 345.1, 393, 434, 427.9, 422, 383.9, 392.3, 352.2)


shapiro.test(before)
shapiro.test(after)
# therefore  both distributions are normaly distributed 

ftest <- var.test(before, after)
ftest
# since p is >0.05 Variance is equal

res <- t.test(before, after, alternative = "less", var.equal=TRUE, paired =TRUE)
res




# Exercise 1

library(datarium)
data("mice2")
head(mice2)
str(mice2)

shapiro.test(mice2$before)
shapiro.test(mice2$after)
# therefore both distributions are nomarly distributed

diff <- mice2$after-mice2$before
shapiro.test(diff)
# therefore the difference is also normaly distributed

ftest <- var.test(mice2$before, mice2$after)
ftest
# therefore varience is equal

res <- t.test(mice2$before, mice2$after, paired =TRUE, var.equal = TRUE)
res
# therefore theres a significant difference in means



# Exercise 2

pre_test <- c(85,85,78,78,92,94,91,85,72,97,84,85,99,80,90,88,95,90,96,89)
post_test <- c(84,88,88,90,92,93,91,85,80,93,97,100,93,91,90,87,94,83,92,95)

diff <- post_test-pre_test
diff

shapiro.test(pre_test)
# since p >0.05 this is normaly dsoitributed
shapiro.test(post_test) 
# Since p>0.05 this is normally distributed
shapiro.test(diff)
# Since p>0.005 this is normally distributed

ftest <- var.test(pre_test,post_test)
ftest
# Since p>0.05 varinces is equal

res <- t.test(pre_test, post_test, paired = TRUE, var.equal = TRUE)
res
# Since p>0.05 there is no signifiant different in mean weights
