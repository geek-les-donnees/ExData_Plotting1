data = read.table(file = 'household_power_consumption.txt', sep=';' , header = TRUE, na.strings="?")

head(data)

str(data)

data_sub <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ), ]

data_sub$DateTime <- strptime(paste(data_sub$Date,data_sub$Time),"%d/%m/%Y %H:%M:%S")

plot(data_sub$DateTime ,data_sub$Sub_metering_1, type="l" , ylab="Submetering" , xlab = NA , col='black')
lines(data_sub$DateTime , data_sub$Sub_metering_2, col='red')
lines(data_sub$DateTime , data_sub$Sub_metering_3 , col = 'blue')

legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


dev.copy(png, file="ExData_Plotting1\\plot3.png", height=480, width=480)
dev.off()



