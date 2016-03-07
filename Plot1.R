MyTable <- read.table ("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
DaysFeb <- MyTable[66637:69516,]  #I could not find how to filter by date so i filter just like that
library(datasets)
png("Plot1.png", width = 480, height = 480, units = "px", bg = "white")
par(mar= c(4, 4, 2, 1))
hist(DaysFeb$Global_active_power,col = c("red"),main = "Global Active Power",xlab = "Global Active Power (kilowatts)" )
dev.off()