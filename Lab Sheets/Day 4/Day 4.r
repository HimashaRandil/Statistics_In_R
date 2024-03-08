x <- c(40,15,30,50,20, 35)
labels <- c("apple", "kiwi", "grape", "banana", "pear", "orange")
pie (x, labels)


pie(x, labels, main = "Favourte fruit pie chart", col = rainbow(length(x)))

pie ( x , labels, main = "Favourte fruit pie chart" , col=c ( "red" , "orange" , "yellow" , "blue" , "green" , "purple" ) )

pie ( x , labels, main = "Favourte fruit pie chart" , col=gray(seq(0.4, 1.0, length =6)  ) )
