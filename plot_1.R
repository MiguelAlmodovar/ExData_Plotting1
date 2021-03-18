plot_1 <- function(){
  #Load data
  data <- load_data()
  #Load png graphics
  png(filename = "plot_1.png", 
     width = 480, height = 480,
     units = "px", bg = "transparent")
  #plot
  with(data,hist(Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"))
  #close
  dev.off()
}