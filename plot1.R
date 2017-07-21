# source("read_data.R")

outFile = paste0(getwd(), "/plot1.png")
png(outFile, height=480, width=480)
hist(s$Global_active_power, 
     main="Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency",
     xlim = c(0,6),
     ylim = c(0, 1200),
     col="red")
dev.off()