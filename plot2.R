plot2 <- function() {
    if(!exists("getData", mode="function")) {
        source("getData.R")  
    } 
    
    newdata <- getData()
    
    png(filename="plot2.png")
    plot(newdata$fullDate, newdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
}

