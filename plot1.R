plot1 <- function() {
  data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  subdata <- data[data$Date==as.Date("2007-02-01","%Y-%m-%d") | data$Date==as.Date("2007-02-02","%Y-%m-%d"),]
  png("plot1.png", width = 480, height = 480)
  hist(subdata$Global_active_power, col=2, xlab="Global Active Power (kilowatts)", main="Global Active Power")
  dev.off()
}