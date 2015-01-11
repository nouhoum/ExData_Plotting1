if(!file.exists("household_power_consumption.txt")) {
  cat("Downloading file")
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"  
  temp <- tempfile()
  download.file(fileUrl, destfile = temp, method = "curl")
  dataFile <- unzip(temp)
  unlink(temp)
}

data <- read.table(dataFile, header=T, sep=";")
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

#Take only the subset we are interesting in
power <- data[(data$Date == '2007-02-01') | (data$Date == '2007-02-02'),]

power$Sub_metering_1 <- as.numeric(as.character(power$Sub_metering_1))
power$Sub_metering_2 <- as.numeric(as.character(power$Sub_metering_2))
power$Sub_metering_3 <- as.numeric(as.character(power$Sub_metering_3))
power$Global_active_power <- as.numeric(as.character(power$Global_active_power))
power$Global_reactive_power <- as.numeric(as.character(power$Global_reactive_power))
power$Voltage <- as.numeric(as.character(power$Voltage))

power <- transform(power, Timestamp=as.POSIXct(paste(power$Date, power$Time)), "%d/%m/%Y %H:%M:%S")
