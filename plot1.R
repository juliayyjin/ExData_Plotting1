data<- read.table("household_power_consumption.txt", sep=";", header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

#Loading the data
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

#Making Plots
png("plot1.png", width=480, height= 480)
hist(data$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power")

dev.off()