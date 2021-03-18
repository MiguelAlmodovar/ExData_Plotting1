plot_4 <- function() {
  #load df
  data <- load_data()
  #Load png graphics
  png(
    filename = "plot_4.png",
    width = 480,
    height = 480,
    units = "px",
    bg = "transparent"
  )
  #2x2 layout
  par(mfrow = c(2, 2))
  #First plot
  with(
    df,
    plot(
      DateTime,
      Global_active_power,
      type = "l",
      xlab = "",
      ylab = "Global Active Power (kilowatts)"
    )
  )
  #Second plot
  with(df,
       plot(
         DateTime,
         Voltage,
         type = "l",
         xlab = "datetime",
         ylab = "Voltage"
       )
   )
  #Third plot
  with(df,
       plot(
         DateTime,
         Sub_metering_1,
         type = "l",
         xlab = "",
         ylab = "Sub_Metering"
       ))
  with(df, lines(DateTime, Sub_metering_2, col = "red"))
  with(df, lines(DateTime, Sub_metering_3, col = "blue"))
  legend(
    "topright",
    c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"),
    fill = c("black", "red", "blue")
  )
  #Fourth plot
  with(
    df,
    plot(
      DateTime,
      Global_reactive_power,
      type = "l",
      xlab = "datetime",
      ylab = "Global_reactive_power"
    )
  )
  dev.off()
  
}