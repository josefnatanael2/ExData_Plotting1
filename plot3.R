source("load_data.R")
submetering <- cbind

# Create the plot
par(mfrow = c(1, 1))
plot(df$submetering1, type="n", xaxt="n", xlab="", ylab="Energy sub metering")
axis(1, at=c(1, 1440, 2880), c("Thu", "Fri", "Sat"))

lines(df$submetering1, col = "black")
lines(df$submetering2, col = "red")
lines(df$submetering3, col = "blue")

legend("topright", col = c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, cex = 0.7)
dev.copy(png, file = "plot3.png")
dev.off()
