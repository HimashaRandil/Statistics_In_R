# Create the data for the chart

x <- c(40,15,30,50,20,35)
lables <- c("apple", "kiwi", "grape", "banana", "pera", "orange")

# plot the bar chart

barplot(x, names.ar=lables)
barplot(x, names.ar=lables, xlab= "Fruit", ylab= "No. Of Respondents", col= "blue", main="favourite fuit chart", border= "red")


#stacked bar chart

Gender <- c("Male", "Female")
Fruit <- c("apple", "kiwi", 'grape', 'banana', "pear", "orange")

#create the matrix of the values 
Values <- matrix(c(18,5,18,30,12,15,22,10,12,20,8,20), nrow=2, ncol=6, byrow = TRUE)

#give colors
colors = c("blue", "green")

#create the bar chart
barplot (Values, main="Favourite fruit chart", names.arg=Fruit, xlab = "Fruit", ylab= "No Of Respondents", col = colors)

#add legend
legend ("topleft", Gender, cex= 1.3, fill = colors)

# Group Bar Chart

barplot (Values, main="Favourite fruit chart", names.arg=Fruit, xlab = "Fruit", ylab= "No Of Respondents", col = colors, beside= TRUE)
legend ("topleft", Gender, cex= 1.3, fill = colors)
