MyTable <- read.table ("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
DaysFeb <- MyTable[66637:69516,]  #I could not find how to filter by date so i filter just like that
library(datasets)
png("Plot2.png", width = 480, height = 480, units = "px", bg = "white")
par(mar= c(4, 4, 2, 1))
plot (DaysFeb$Global_active_power,type = "l",xlab = "",ylab="Global Active Power (kilowatts)",xaxt='n')
axis(1, at=c(0,1250,2500), lab=c("Thu","Fri","Sat"))
dev.off()

