column_names <- c("date", "time", "globalactivepower", 
                  "globalreactivepower", "voltage", "globalintensity", 
                  "submetering1", "submetering2", "submetering3")
df <- read.table("household_power_consumption.txt", nrows=5000, sep=";", header=F, skip=65000, na.strings="?")
names(df) <- column_names
df$date <- as.Date(df$date, "%d/%m/%Y")
start_date <- as.Date("1/2/2007", "%d/%m/%Y")
end_date <- as.Date("2/2/2007", "%d/%m/%Y")
df <- subset(df, df$date %in% c(start_date, end_date))
rownames(df) <- seq(1:length(df$date))