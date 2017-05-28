plot3 <- function() {
    if(!exists("getData", mode="function")) {
        source("getData.R")  
    } 
    
    newdata <- getData()
    
    png(filename="plot3.png")
    plot(newdata$fullDate,newdata$Sub_metering_1,type="l",col="black", xlab="", ylab="Energy sub metering")
    lines(newdata$fullDate,newdata$Sub_metering_2,col="red")
    lines(newdata$fullDate,newdata$Sub_metering_3,col="blue")
    lines(newdata$fullDate,newdata$Sub_metering_3,col="blue")
    legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, col=c("black","red","blue"))
    dev.off()
}
