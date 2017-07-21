# source("read_data.R")

outFile = paste0(getwd(), "/plot2.png")
png(outFile, height=480, width=480)

plot(s$Date + s$Time, s$Global_active_power, 
     pch=NA, 
     xlab="",
     ylab="Global Active Power (kilowatts)")
lines(s$Date + s$Time, s$Global_active_power, lwd=1, col="black")
dev.off()