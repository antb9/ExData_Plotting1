source("Loading_data.R")
head(df)
png(filename = "/Users/anthonybonilla/Desktop/Anthony/DS/R/Plot4.png",
    width = 480, height = 480, units = "px")
par(mfcol = c(2,2), mar= c(4,4,2,1), oma=c(0,0,2,0))
# plot 1
plot(df$Datetime,df$Global_active_power, xlab="", type="l", 
     ylab = "Global Active Power", xaxt="n")
axis(1, at = c(as.numeric(df$Datetime[1]), 
               as.numeric(df$Datetime[length(df$Datetime) / 2]), 
               as.numeric(df$Datetime[length(df$Datetime)])), 
     labels=c("Thu","Fri","Sat"))
# plot 2
with(df,plot(Datetime,Sub_metering_1, xlab="", type="n", # plot initalized
             ylab = "Energy sub metering", xaxt="n"))
with(df, lines(Datetime,Sub_metering_1,type = "l")) # must use lines to overwrite "plot" function
with(df, lines(Datetime,Sub_metering_2,type = "l", col="red"))
with(df, lines(Datetime,Sub_metering_3,type = "l",col="blue"))
legend("topright",lwd = 1,col=c("black","blue","red"), 
       legend = c(colnames(df)[7],colnames(df)[8],colnames(df)[9]),bty="n")
axis(1, at = c(as.numeric(df$Datetime[1]), 
               as.numeric(df$Datetime[length(df$Datetime) / 2]), 
               as.numeric(df$Datetime[length(df$Datetime)])), 
     labels=c("Thu","Fri","Sat"))
# plot 3
plot(df$Datetime,df$Voltage,type = "l", xaxt="n",xlab = "datetime", 
     ylab = "Voltage")
axis(1, at = c(as.numeric(df$Datetime[1]), 
               as.numeric(df$Datetime[length(df$Datetime) / 2]), 
               as.numeric(df$Datetime[length(df$Datetime)])), 
     labels=c("Thu","Fri","Sat"))
# plot 4
plot(df$Datetime,df$Global_reactive_power,type = "l", xaxt="n",
     xlab = "datetime", ylab = colnames(df)[3])
axis(1, at = c(as.numeric(df$Datetime[1]), 
               as.numeric(df$Datetime[length(df$Datetime) / 2]), 
               as.numeric(df$Datetime[length(df$Datetime)])), 
     labels=c("Thu","Fri","Sat"))
dev.off()