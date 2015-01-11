source("loaddataset.R")

par(mfrow = c(2, 2))

with(power, {
  plot(Timestamp, Global_active_power, xlab = "", ylab = "Global Actice Power (kilowatts)", type = "l")
  plot(Timestamp, Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
  
  with(power, plot(Timestamp, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l"))
  lines(power$Timestamp, power$Sub_metering_2, col = "red")
  lines(power$Timestamp, power$Sub_metering_3, col = "blue")
  legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1), cex = .5)
  
  plot(Timestamp, Global_reactive_power, xlab = "datetime", ylab = "Global_reactice_power", type = "l")  
})

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()