source("load_data.R")

# Create the plot
par(mfrow = c(1, 1))
plot(df$globalactivepower, type="l", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
axis(1, at=c(1, 1440, 2880), c("Thu", "Fri", "Sat"))
dev.copy(png, file = "plot2.png")
dev.off()
