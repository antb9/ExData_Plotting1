filepath<-"/Users/anthonybonilla/Desktop/Anthony/Datasets/household_power_consumption.txt"
data<- read.table(filepath, header= TRUE, sep = ";",na="?") #reading data
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
df <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data)
datetime <- paste(as.Date(df$Date), df$Time) # create datetime obj
df$Datetime <- as.POSIXct(datetime) # create datetime column
