MyTable <- read.table ("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
DaysFeb <- MyTable[66637:69516,]  #I could not find how to filter by date so i filter just like that
library(datasets)
png("Plot4.png", width = 480, height = 480, units = "px", bg = "white")
par(mar= c(4, 4, 2, 1))
par (mfrow =c (2,2))

plot (DaysFeb$Global_active_power,type = "l",xlab = "",ylab="Global Active Power (kilowatts)",xaxt='n')
axis(1, at=c(0,1250,2500), lab=c("Thu","Fri","Sat"))

plot (DaysFeb$Voltage,type = "l",xlab = "datetime",ylab="Voltage",xaxt='n')
axis(1, at=c(0,1250,2500), lab=c("Thu","Fri","Sat"))

plot (DaysFeb$Sub_metering_1,NULL,type = "l",xlab = "",ylab="Energy Sub Metering)",xaxt='n',col="black")
lines (DaysFeb$Sub_metering_2,col="red")
lines (DaysFeb$Sub_metering_3,col="blue")
axis(1, at=c(0,1250,2500), lab=c("Thu","Fri","Sat"))

plot (DaysFeb$Global_reactive_power,type = "l",xlab = "datetime",ylab="Global_reactive_power",xaxt='n')
axis(1, at=c(0,1250,2500), lab=c("Thu","Fri","Sat"))

dev.off()