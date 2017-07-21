source("read_data.R")

outFile = paste0(getwd(), "/plot3.png")
png(outFile, height=480, width=480)

plot(s$Datetime, s$Sub_metering_1, 
     pch=NA,
     xlab="",
     ylab="Energy sub metering")

lines(s$Datetime, s$Sub_metering_1, col="black", lwd=1)
lines(s$Datetime, s$Sub_metering_2, col="red", lwd=1)
lines(s$Datetime, s$Sub_metering_3, col="blue", lwd=1)

legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),
       lwd = 1
       )

dev.off()