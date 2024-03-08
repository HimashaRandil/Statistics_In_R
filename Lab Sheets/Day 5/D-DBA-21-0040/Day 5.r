#installing and loading package
install.packages("ggplot2")
library(ggplot2)


count <- c(40,15,30,50,20,35)
fruit <- c("apple", "kiwi", "grape", "banana", "pear", "orange")

df <- data.frame(fruit,count)
df

pie <- ggplot(df, aes(x="", y= count, fill=fruit)) + geom_col() + coord_polar(theta = "y")
pie

#adding text

pie <- pie + geom_text(aes(label = count), position = position_stack(vjust = 0.5))
pie


#use brewer color palettes

pie1 <- pie + scale_fill_brewer()
pie1


pie2 <- pie+ scale_fill_brewer(palette = "Dark2")
pie2

pie3 <- pie + scale_fill_brewer(palette = "Blues")+ theme_minimal()
pie3


#use grey scale

pie4 <- pie + scale_fill_grey() + theme_minimal()
pie4


#use custom color palette

pie5 <- pie + scale_fill_manual(values= c("#E69F00", "#56B4E9", "#BE2A3E", "#EC754A", "#EACF65", "#3C8D53"))
pie5






# Bar Charts

# Basic verical bar plot
Bar <- ggplot(data=df, aes(x=fruit, y=count))+geom_bar(stat="identity")
Bar

# Basic Hporizontal Bar Plot
Bar <- Bar + coord_flip()
Bar


# Changing color of the Bar plot

Bar <- ggplot(data=df, aes(x=fruit, y=count))+ geom_bar(stat="identity", fill="blue")
Bar

# Adding an outline color
Bar <- ggplot(data=df, aes(x=fruit, y=count)) + geom_bar(stat="identity", color="black", width=0.6)
Bar


# Bar plot with labels

Bar <- ggplot(data=df, aes(x=fruit, y=count))+ geom_bar(stat="identity", color= "black", fill= "blue", width =0.6)+ geom_text(aes(label=count), vjust=1.6, color="white",size=3.5)
Bar




#Stacked Bar Chart in ggplot2 package


count <- c(18,5,18,30,12,15,22,10,12,20,8,20)
fruit <- rep(c("apple", "kiwi", "grape", "banana", "pear", "orange"),2)
Gender <- rep(c("Male", "Female"),each=6)
df1 <- data.frame(Gender, fruit, count)
df1


#stacked Bar Chart

Bar1 <- ggplot(data=df1, aes(x=fruit, y=count, fill=Gender))+ geom_bar(stat="identity", width=0.6)
Bar1


#Line chart in ggplot2

Temp <- c(30,35,40,36,31,30,27,42,34,25,33,36)
Month <- c(1,2,3,4,5,6,7,8,9,10,11,12)
Month <- as.factor(Month)
df1 <- data.frame(Month, Temp)


# Basic Line
line_chart <- ggplot(data=df1, aes(x=Month, y= Temp, group=1))+ geom_line()+geom_point()
line_chart



#formating the line type 
line <- ggplot(data=df1, aes(x=Month, y= Temp, group=1))+geom_line(linetype = "dotted")+geom_point()
line


#Formating line color
ggplot(data=df1, aes(x=Month, y=Temp, group=1))+geom_line(color="green")+geom_point()


ggplot(data=df1, aes(x=Month, y=Temp, group=1))+geom_line(color="green", size =1.5)+geom_point()



#Adding titles
L <- ggplot(data=df1, aes(x=Month, y=Temp, group=1))+geom_line(color="green", size=1.5)+geom_point()

L+ggtitle("Monthly Temperature")+ labs(x="Month", y="Temperature")




# PLotting multiple lines

Month <- rep(c(1,2,3,4,5,6,7,8,9,10,11,12),2)
Month <- as.factor(Month)
Location <- rep(c("Galle", "Kandy"), each=12)
Temp <- c(30,35,40,36,31,30,27,42,34,25,33,36,25,30,37,23,38,35,20,40,38,30,28,35)
df2 <- data.frame(Location, Month, Temp)


#plotting line with multiple groups 
ggplot(data=df2, aes(x=Month, y=Temp, group=Location))+geom_line(aes(color=Location), size=1)+geom_point(aes(color=Location))




# Histogram in ggplot2 package

df <- data.frame(sex=factor(rep(c("F","M"), each=200)), weight=round(c(rnorm(200, mean=55, sd=5), rnorm(200, mean=65, sd=5))))

#Basic Histogram

ggplot(df,aes(x=weight))+geom_histogram()

# Change the width of bins

ggplot(df, aes(x=weight))+geom_histogram(binwidth=2)

# Change Color

p <- ggplot(df,aes(x=weight))+geom_histogram(color="black", fill="white")
p


#Changing the line color ad fill color

q <- ggplot (df, aes(x=weight))+geom_histogram(color="darkblue", fill= "lightblue",binwidth=2)
q



#Change histogram plot line colors by group

ggplot(df, aes(x=weight, color=sex))+geom_histogram(fill="white")


# Overlaid histogram

p <- ggplot(df, aes(x=weight, color=sex))+geom_histogram(fill="white", alpha=0.5, position="identity")
p


# Boxplot in ggplpot2 package

data <- data.frame(cond = factor(rep(c("A","B"), each=200)), rating=c(rnorm(200, mean=.8)))

ggplot(data, aes(y=rating))+geom_boxplot()

#Hporizontal Boxplot

ggplot(data, aes(x=rating))+geom_boxplot()


# Box PLot with groups

ggplot(data,aes(x=cond, y=rating))+geom_boxplot()


#Horizontal Box plot

ggplot(data,aes(x=cond, y=rating))+geom_boxplot() + coord_flip()


# Colored Boxplot
ggplot(data, aes(x=cond,y=rating, color=cond))+geom_boxplot()
ggplot(data, aes(x=cond,y=rating, fill=cond))+geom_boxplot()


#Scatter Plot

ggplot(mtcars, aes(x=wt, y= mpg))+geom_point()

#Changing color, shape and size

ggplot(mtcars, aes(x=wt, y= mpg))+geom_point(color="blue", size=2, shape=6)


#Add regression line

ggplot(mtcars, aes(x=wt, y= mpg))+geom_point()+ geom_smooth(method=lm, se=FALSE)


ggplot(mtcars, aes(x=wt, y= mpg))+geom_point(aes(color=factor(gear)), size=2)+ geom_smooth(method=lm, se=FALSE)
