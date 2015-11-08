
# Plot3 -------------------------------------------------------------------

# Loading the data
source("loadData.R")

# Plot
png(filename = "plot3.png", width = 480, height = 480, units = "px")

colVars   = c("black", "red", "blue")
namesVars = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

plot(data$Sub_metering_1 ~ data$dataTime, type = "l", col = colVars[1],
     ylab = "Energy sub metering", xlab = "")
lines(data$Sub_metering_2 ~ data$dataTime, type = "l", col = colVars[2])
lines(data$Sub_metering_3 ~ data$dataTime, type = "l", col = colVars[3])

legend("topright", namesVars, col = colVars, lty = 1)

dev.off()

