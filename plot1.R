# Read the file 

hpc <- read.table(file="household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

# Create the Start and End Date in R Format
startdate <- strptime("01/02/2007", format='%d/%m/%Y')

enddate <- strptime("02/02/2007", format='%d/%m/%Y')

#Create a subset of data for 2 days in Feb 2007
hpcsub <- subset(hpc, strptime(hpc$Date, format='%d/%m/%Y')>=startdate & strptime(hpc$Date, format='%d/%m/%Y')<=enddate)

#Create the Histogram in an png File
png(file="plot1.png",width=480,height=480)

hist(hpcsub$Global_active_power/1000, col=c("red"), xlab="Global Active Power (kilowatts)", main="Global Active Power")

dev.off()


