#Part 1

#a

SID <- c("A01", "A02", "A03", "A04", "A05", "A06", "A07", "A08", "A09", "A10")
Gender <- c("M", "F", "M", "M", "F", "M", "F", "M", "F","F")
Weight <- c(35, 45, 56, 65, 35, 30, 45, 60, 52, 50)
Students <- data.frame(Gender, Weight)
row.names(Students) <- SID
Students
rm(SID,Gender, Weight)

#b

Students$Height <- c(86.5, 71.8, 77.2, 84.9, 75.4, 80.5, 92.5, 78.5, 70.5, 85.2)
Students

#c
fix(Students)
Students

#d
summary(Students)


#Part 2

#a
Students$Weight[Students$Gender=="F"]

#b
Students$Height[Students$Gender== "M"]

#c
row.names(Students)[Students$Age<20]

#d
row.names(Students)[Students$Weight<40&Students$Gender=="M"]

#e
row.names(Students)[Students$Height>75&Students$Gender=="F"]


