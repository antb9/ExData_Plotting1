source("Loading_data.R")
head(df)
png(filename = "/Users/anthonybonilla/Desktop/Anthony/DS/R/Plot2.png",
    width = 480, height = 480, units = "px")
plot(df$Datetime,df$Global_active_power, xlab="", type="l", 
     ylab = "Global Active Power", xaxt="n")
axis(1, at = c(as.numeric(df$Datetime[1]), # datetime obj is non numeric
               as.numeric(df$Datetime[length(df$Datetime) / 2]), 
               as.numeric(df$Datetime[length(df$Datetime)])), 
     labels=c("Thu","Fri","Sat"))
dev.off()
