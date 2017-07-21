source("read_data.R")

outFile = paste0(getwd(), "/plot4.png")
png(outFile, height=480, width=480)

par(mfrow = c(2, 2))

# row 1, col 1
plot(s$Datetime, s$Global_active_power, 
     pch=NA, 
     xlab="",
     ylab="Global Active Power (kilowatts)")
lines(s$Datetime, s$Global_active_power, lwd=1, col="black")

# row 1, col 2
plot(s$Datetime, s$Voltage, 
     pch=NA, 
     xlab="datetime",
     ylab="Voltage")
lines(s$Datetime, s$Voltage, lwd=1, col="black")

#row 2, col 1
plot(s$Datetime, s$Sub_metering_1, 
     pch=NA,
     xlab="",
     ylab="Energy sub metering")

lines(s$Datetime, s$Sub_metering_1, col="black", lwd=1)
lines(s$Datetime, s$Sub_metering_2, col="red", lwd=1)
lines(s$Datetime, s$Sub_metering_3, col="blue", lwd=1)

# row 2, col 2
plot(s$Datetime, s$Global_reactive_power, 
     pch=NA, 
     xlab="datetime",
     ylab="Global_reactive_power")
lines(s$Datetime, s$Global_reactive_power, lwd=1, col="black")

dev.off()