source("loaddata.r")
hist(df$Global_active_power, main="Global Active Power", ylab="Frequency", xlab="Global Active Power (kilowatts)", col="red", ylim=c(0,1200))
dev.copy(png,'plot1.png',  width = 480, height = 480)
dev.off()

