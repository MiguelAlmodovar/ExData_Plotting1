plot_2 <- function(){
  #Load data
  data <- load_data()
  #Load png graphics
  png(filename = "plot_2.png", 
      width = 480, height = 480,
      units = "px", bg = "transparent")
  #plot
  with(data,plot(DateTime, Global_active_power, 
       type = "l",
       xlab = "",
       ylab = "Global Active Power (kilowatts)"))
  #close
  dev.off()
  }