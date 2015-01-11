source("loaddataset.R")

plot(power$Timestamp, power$Global_active_power, type = "l", xlab = "", ylab = "Global Actice Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()