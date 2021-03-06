source("load_data.R")

# Create the plot
par(mfrow = c(1, 1))
with(df, 
     hist(globalactivepower, 
          main="Global Active Power", 
          xlab="Global Active Power (kilowatts)", 
          col="red",
          ylim=c(0, 1200)))
dev.copy(png, file = "plot1.png")
dev.off()
