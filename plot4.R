plot4 <- function() {
    if(!exists("getData", mode="function")) {
        source("getData.R")  
    } 
    
    newdata <- getData()
    
    png(filename="plot4.png")
    par(mfrow=c(2,2))
    plot(newdata$fullDate, newdata$Global_active_power, type="l", xlab="", ylab="Global Active Power")
    plot(newdata$fullDate, newdata$Voltage, type="l", xlab="datetime", ylab="Voltage")
    plot(newdata$fullDate,newdata$Sub_metering_1,type="l",col="black", xlab="", ylab="Energy sub metering")
    lines(newdata$fullDate,newdata$Sub_metering_2,col="red")
    lines(newdata$fullDate,newdata$Sub_metering_3,col="blue")
    lines(newdata$fullDate,newdata$Sub_metering_3,col="blue")
    legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"), bty="n")
    plot(newdata$fullDate, newdata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
    dev.off()
}
