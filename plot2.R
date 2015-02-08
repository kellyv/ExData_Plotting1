plot2 <- function() {
  data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
  datetimed <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
  data <- cbind(data, datetimed)
  subdata <- data[data$datetimed>=strptime("2007-02-01 00:00:00","%Y-%m-%d %H:%M:%S") & data$datetimed<strptime("2007-02-03 00:00:00","%Y-%m-%d %H:%M:%S"),]
  png("plot2.png", width = 480, height = 480)
  plot(subdata$datetimed, subdata$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
  lines(subdata$datetimed, subdata$Global_active_power)
  dev.off()
}