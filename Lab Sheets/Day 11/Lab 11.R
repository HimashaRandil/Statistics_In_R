# Example 1

binom.test(9,24,1/6)
binom.test(11,30, 0.5 , alternative = "less")


res <- prop.test(46,50,0.8,alternative="greater",correct=FALSE)
res


# Example 2

res <- prop.test(64,100,0.6, correct = FALSE)
res


# Exercise 1

res <- prop.test(48,100,0.5,correct = FALSE)


# EXercise 2

res <- prop.test(65, 100, 0.5, correct =FALSE)
res


# Exercise 3

res <- prop.test(95,160,0.5, correct = FALSE)
res
#since the p value is less than 0.05 we can say that p is not equal to 0.5
# that means we can say that cancer affects more to males 


# Two Samples Propotion test

# Example 1

res <- prop.test(x=c(490,400),n=c(500,500), correct =FALSE)
res


# Example 2

library(MASS)
data("quine")
head(quine)
