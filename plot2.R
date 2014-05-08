#Data exploration assignment
#plot 1
hpc <- read.csv("household_power_consumption.txt", sep=";")

data=subset(hpc, hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")

rm(hpc) #run this to remove the large data set and free up memory


#plot2
gap=as.numeric(as.character(data$Global_active_power))

plot(gap, ylab="Global Active Power (kilowatts)", type="l", xaxt="n",xlab="")
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1, 1440, 2880))

