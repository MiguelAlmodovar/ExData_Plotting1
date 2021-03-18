plot_3 <- function() {
  #load df
  df <- load_data()
  #Load png graphics
  png(
    filename = "plot_3.png",
    width = 480,
    height = 480,
    units = "px",
    bg = "transparent"
  )
  #First plot
  with(df,
       plot(
         DateTime,
         Sub_metering_1,
         type = "l",
         xlab = "",
         ylab = "Sub_Metering"
       ))
  #Add the other variables
  with(df, lines(DateTime, Sub_metering_2, col = "red"))
  with(df, lines(DateTime, Sub_metering_3, col = "blue"))
  #Legend at the top right corner
  legend(
    "topright",
    c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"),
    fill = c("black", "red", "blue")
  )
  #close
  dev.off()
}