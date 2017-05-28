plot1 <- function() {
    if(!exists("getData", mode="function")) {
        source("getData.R")  
    } 
    
    newdata <- getData()
    
    png(filename="plot1.png")
    hist(newdata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
    dev.off()
}

