
# Plot2 -------------------------------------------------------------------

# Loading the data
source("loadData.R")

# Plot
png(filename = "plot2.png", width = 480, height = 480, units = "px")

plot(data$Global_active_power ~ data$dataTime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()
