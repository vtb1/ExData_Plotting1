# Course 4 Assignment 1
#Load the file 
#

# Read File
library("dplyr")
X <- read.table("./Curso4_p1/household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)

# Format Date
X$V1 <- strptime (X$V1,format="%d/%m/%Y")


#Change to Data
X$V1 <- as.Date(X$V1)

# Filtering data
Y <- X[X$V1 %in% c('1/2/2007', '2/2/2007'),]

# Change global active power to numeric
Y$V3 <- as.numeric(Y$V3)

#pLOT 1

hist(Y$V3, main = paste("Global Active Power"), xlab = "Global active Power (kilowatts)", col = "orange1")