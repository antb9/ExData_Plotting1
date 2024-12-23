source("Loading_data.R")
head(data)
png(filename = ".data/Plot1.png",
    width = 480, height = 480, units = "px")
hist(df$Global_active_power,
     col = "Red",xlab = "Global Active Power (kW)",main = "Global Active Power")
dev.off()
