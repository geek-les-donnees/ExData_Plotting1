data = read.table(file = 'household_power_consumption.txt', sep=';' , header = TRUE, na.strings="?")

head(data)

str(data)

data_sub <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ), ]

data_sub$DateTime <- strptime(paste(data_sub$Date,data_sub$Time),"%d/%m/%Y %H:%M:%S")


par(mfcol=c(2,2))

plot(data_sub$DateTime, data_sub$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)

# plot (2,1)
plot(data_sub$DateTime, data_sub$Sub_metering_1,type="l",ylab="Energy sub metering",xlab=NA,col="black")
lines(data_sub$DateTime, data_sub$Sub_metering_2, col="red")
lines(data_sub$DateTime, data_sub$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="l",col=c("black","red","blue"),lwd=2,cex=0.4)


# plot (1,2)
plot(data_sub$DateTime, data_sub$Voltage, type="l", xlab="datetime", ylab="Voltage")

# plot (2, 2)
plot (data_sub$DateTime, data_sub$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")


dev.copy(png, file="ExData_Plotting1\\plot4.png", height=480, width=480)
dev.off()



