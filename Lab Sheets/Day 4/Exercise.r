piepercent <- round(100*x/sum(x),1)
piepercent <- round(100*x/sum(x))

lbls <- paste(piepercent, "%")

pie(x, labels=lbls, main = "Favourite fruit pie chart", col = rainbow(length(x)))

legend("topright", c("apple", "kiwi", "grape", "banana", "pear", "orange"), cex = 0.8, fill = rainbow(length(x)))
