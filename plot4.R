
# Plot4 -------------------------------------------------------------------

# Loading the data
source("loadData.R")

# Plot
png(filename = "plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2,2), mar = c(4,4,2,2))

#First plot
plot(data$Global_active_power ~ data$dataTime, type = "l",
     ylab = "Global Active Power", xlab = "")

#Second plot
plot(data$Voltage ~ data$dataTime, type = "l",
     xlab = "datetime", ylab = "Voltage")

#Third plot
colVars   = c("black", "red", "blue")
namesVars = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

plot(data$Sub_metering_1 ~ data$dataTime, type = "l", col = colVars[1],
     ylab = "Energy sub metering", xlab = "")
lines(data$Sub_metering_2 ~ data$dataTime, type = "l", col = colVars[2])
lines(data$Sub_metering_3 ~ data$dataTime, type = "l", col = colVars[3])

legend("topright", namesVars, col = colVars, lty = 1, bty = "n")

#Fourth plot
plot(data$Global_reactive_power ~ data$dataTime, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
