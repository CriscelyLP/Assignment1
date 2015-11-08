#  ------------------------------------------------------------------------
#  Exploratory Data Analysis : Assignment 1
#  ------------------------------------------------------------------------
#  Autor: Criscely Lujan Paredes

# WARNING: All routes are script regarding the location of this file


# Loading the data --------------------------------------------------------

householdFile = "household_power_consumption.txt"
dataTotal     = read.table(householdFile, header=TRUE, sep=";", na.strings="?")

# Subsetting the data
dataTotal$Date = as.Date(dataTotal$Date, format = "%d/%m/%Y")
data = subset(dataTotal, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

# Converting dates
dataTime      = paste(as.Date(data$Date), data$Time)
data$dataTime = as.POSIXct(dataTime)
