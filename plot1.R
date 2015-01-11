source("loaddataset.R")

hist(power$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Actice Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()


