source("load_data.R")

# Create the plot
par(mfcol = c(2, 2))
plot(df$globalactivepower, type="l", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
axis(1, at=c(1, 1440, 2880), c("Thu", "Fri", "Sat"))

plot(df$submetering1, type="n", xaxt="n", xlab="", ylab="Energy sub metering")
axis(1, at=c(1, 1440, 2880), c("Thu", "Fri", "Sat"))
lines(df$submetering1, col = "black")
lines(df$submetering2, col = "red")
lines(df$submetering3, col = "blue")

legend("topright", col = c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, cex = 0.5)

plot(df$voltage, type="l", ylab="Voltage", xaxt="n", xlab="datetime")
axis(1, at=c(1, 1440, 2880), c("Thu", "Fri", "Sat"))

plot(df$globalreactivepower, type="l", ylab="Global_reactive_power", xaxt="n", xlab="datetime")
axis(1, at=c(1, 1440, 2880), c("Thu", "Fri", "Sat"))

dev.copy(png, file = "plot4.png")
dev.off()