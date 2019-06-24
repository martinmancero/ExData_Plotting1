#Reading, naming and subsetting power consumption data
power <- read.table("C:/Users/Martin Mancero/Documents/Libros/Data Science Specialization/4. Exploratory Data Analysis/exdata_data_household_power_consumption/household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#Basic Plot Function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# Title - Annotating
title(main="Global Active Power")

# Creating PNG File
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()