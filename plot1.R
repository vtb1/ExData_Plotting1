# Course 4 Assignment 1
#Load the file 
#

# Leemos el fichero
library("dplyr")
X <- read.table("./Curso4_p1/household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)

# Formateamos
X$V1 <- strptime (X$V1,format="%d/%m/%Y")
X$V2 <- strptime (X$V2,format = "%H:%M:%S")

#Modificamos el formato de los campos
X$V1 <- as.Date(X$V1)
#X$V2 <- as.Date(X$V2)
X$V3 <- as.numeric(X$V3)

# Filtramos por el día 2007-02-01 y 2007-01-01
Y <- X[X$V1 %in% c('1/2/2007', '2/2/2007'),]

# Cambiamos a numérico el global active power
Y$V3 <- as.numeric(Y$V3)

#pLOT 1

hist(Y$V3, main = paste("Global Active Power"), xlab = "Global active Power (kilowatts)", col = "orange1")