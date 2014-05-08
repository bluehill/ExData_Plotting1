#Data exploration assignment

hpc <- read.csv("household_power_consumption.txt", sep=";")

data=subset(hpc, hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")

rm(hpc)

gap=as.numeric(as.character(data$Global_active_power))

sm1=as.numeric(as.character(data$Sub_metering_1))
sm2=as.numeric(as.character(data$Sub_metering_2))
sm3=data$Sub_metering_3

#plot4

par(mfrow=c(2,2))

#a
plot(gap, ylab="Global Active Power", type="l", xaxt="n",xlab="")
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1, 1440, 2880))
#b
data$Voltage=as.numeric(as.character(data$Voltage))
plot(data$Voltage, ylab="Voltage", type="l", xaxt="n",xlab="datetime")
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1, 1440, 2880))
#c
plot(sm1, ylab="Energy sub metering", type="l", xaxt="n",xlab="")
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1, 1440, 2880))
lines(sm2, col="red")
lines(sm3, col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", cex=.5, inset=0.04, y.intersp=.4, xjust=0.5)
#d
grp=as.numeric(as.character(data$Global_reactive_power))
plot(grp, ylab="Global_reactive_power", type="l", xaxt="n",xlab="datetime", xaxt="n")
axis(1, labels=c("Thu", "Fri", "Sat"), at=c(1, 1440, 2880))
