#
# function to get specified data from data/household_power_consumption.txt
# Assumes data file exists in folder data/
#
getData <- function() {
    file_to_read <- "data/household_power_consumption.txt"
    dataClasses <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
    
    data <- read.table(file_to_read, header=TRUE, sep=";", na.strings="?" , colClasses = dataClasses)
    
    # Filter out data for: 2007-02-01 and 2007-02-02. 
    newdata <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"), ]
    
    # Concat Date Time string and convert toPOSIXlt object
    newdata <- within(newdata, fullDate <- strptime(paste(Date,Time,sep=' '), "%d/%m/%Y %H:%M:%S" )) 
    
    newdata
    
}