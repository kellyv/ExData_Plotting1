plot3 <- function() {
  data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
  datetimed <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
  data <- cbind(data, datetimed)
  subdata <- data[data$datetimed>=strptime("2007-02-01 00:00:00","%Y-%m-%d %H:%M:%S") & data$datetimed<strptime("2007-02-03 00:00:00","%Y-%m-%d %H:%M:%S"),]
  png("plot4.png", width = 480, height = 480)
  
  plot(subdata$datetimed, subdata$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
  lines(subdata$datetimed, subdata$Global_active_power)
  plot(subdata$datetime, subdata$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
  lines(subdata$datetimed, subdata$Sub_metering_1, col=1)
  lines(subdata$datetimed, subdata$Sub_metering_2, col=2)
  lines(subdata$datetimed, subdata$Sub_metering_3, col=4)
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lwd=1, col=c(1,2,4))
  dev.off()
}