setwd('C:\\Users\\kvadhri\\Documents\\Learning\\Coursera_DS_Specialization')

data = read.table(file = 'household_power_consumption.txt', sep=';' , header = TRUE, na.strings="?")

head(data)

str(data)

data_sub <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007" ), ]


hist(data_sub$Global_active_power , col='red' ,  xlab="Global Active Power (kilowatts)" , main="Global Active Power")

dev.copy(png, file="ExData_Plotting1\\plot1.png", height=480, width=480)
dev.off()
