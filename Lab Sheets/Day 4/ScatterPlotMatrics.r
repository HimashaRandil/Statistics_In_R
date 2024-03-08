#plot the matrices between 4 variables giving 12 plot
#one variable with 3 other and toal 4 variables

pairs(~wt+mpg+disp+cyl, data=mtcars, main= "Scatterplot Matrix")
