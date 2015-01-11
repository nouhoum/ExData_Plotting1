source("loaddataset.R")

with(power, plot(Timestamp, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l"))
lines(power$Timestamp, power$Sub_metering_2, col = "red")
lines(power$Timestamp, power$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1))

dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()