#Data exploration assignment
#plot 1
hpc <- read.csv("household_power_consumption.txt", sep=";")

data=subset(hpc, hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")

rm(hpc) #run this to remove the large data set and free up memory

#plot3
sm1=as.numeric(as.character(data$Sub_metering_1))
sm2=as.numeric(as.character(data$Sub_metering_2))
sm3=data$Sub_metering_3
plot(sm1, ylab="Energy sub metering", type="l", xaxt="n",xlab="")
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1, 1440, 2880))
lines(sm2, col="red")
lines(sm3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

