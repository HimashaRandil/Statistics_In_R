# Line Chart
Temp <- c(30, 35, 40, 36, 31,30,27,42,34,25,33,36)

#plot the line chart
plot(Temp, type = "o")


#Line chart color and label 
plot(Temp, type ="o", col= "red", xlab = "Month", ylab = "Temperature", main = "Monthly Temperature")


# Multiple lines in line chart 
Temp_Galle <- c(30,35,40,36,31,30,27,45,34,25,33,36)
Temp_Kandy <- c(25,30,37,23,38,35,20,40,38,30,28,35)

plot(Temp_Galle, type="o", col="red", xlab="Month", ylab= "Temperature", main = "Monthly Temperature in Kanday And Galle")
lines(Temp_Kandy, type="o", col= "blue")
legend("topright", c("Temp_Galle", "Temp_Kandy"), fill= c("red", "blue"))
