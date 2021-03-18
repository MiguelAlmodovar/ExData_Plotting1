load_data <- function(){
  household_power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
  df <- subset(household_power_consumption,Date == "1/2/2007" | Date == "2/2/2007")
  df$DateTime <- strptime(paste(df$Date,df$Time), "%d/%m/%Y %H:%M:%S")
  df
}