#Data exploration assignment
#plot 1
hpc <- read.csv("household_power_consumption.txt", sep=";")

hpc$Time=strptime(as.character(hpc$Time), format="%H:%M:%S")
data=subset(hpc, hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")
data$Date=as.Date(data$Date, format="%d/%m/%Y")

rm(hpc)

#Plot 1
gap=as.numeric(as.character(data$Global_active_power))
hist(gap, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
