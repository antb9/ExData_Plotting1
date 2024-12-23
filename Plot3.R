source("Loading_data.R")
head(df)
png(filename = ".dataPlot3.png",
    width = 480, height = 480, units = "px")
with(df,plot(Datetime,Sub_metering_1, xlab="", type="n", # plot initalized
     ylab = "Energy sub metering", xaxt="n"))
with(df, lines(Datetime,Sub_metering_1,type = "l")) # must use lines to overwrite "plot" function
with(df, lines(Datetime,Sub_metering_2,type = "l", col="red"))
with(df, lines(Datetime,Sub_metering_3,type = "l",col="blue"))
axis(1, at = c(as.numeric(df$Datetime[1]), 
               as.numeric(df$Datetime[length(df$Datetime) / 2]), 
               as.numeric(df$Datetime[length(df$Datetime)])), 
     labels=c("Thu","Fri","Sat"))
legend("topright",lwd = 1,col=c("black","blue","red"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
