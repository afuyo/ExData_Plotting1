source("loaddata.R")
par(mfrow=c(2,2))

with(df, plot(Time, Global_active_power, 
                         type="l",
                         xlab="", ylab="Global Active Power", 
                         cex.lab=0.7, cex.axis=0.8))

# topright
with(df, plot(Time, Voltage, 
                         type="l",
                         xlab="", ylab="Voltage", 
                         cex.lab=0.7, cex.axis=0.8))

# bottomleft
plot(df$Time, df$Sub_metering_1, 
     type="l", ylab="Energy sub metering", xlab="", cex.lab=0.7, cex.axis=0.8)
lines(df$Time, df$Sub_metering_2, col="red")
lines(df$Time, df$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1), col=c("black","red", "blue"), cex=0.7, bty="n")

# bottomright
with(df, plot(Time, Global_reactive_power, 
                         type="l",lwd=0.5,
                         xlab="datetime", ylab="Global_reactive_power", 
                         cex.lab=0.7, cex.axis=0.8))

# PNG
dev.copy(png,'plot4.png',  width = 480, height = 480)
dev.off()
