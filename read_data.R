library(lubridate)

path <- "~/Documents/_Work/Coursera/DataScience/household_power_consumption.txt"

data <- read.csv(path, na.strings = c("?"), sep = ";", header = TRUE)
data$Date <- dmy(data$Date)
data$Time <- hms(data$Time)

s <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
