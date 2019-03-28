datafile<-"/Users/riddhimab/downloads/household_power_consumption.txt"
data<-read.table(datafile,header=TRUE,sep=";",stringsAsFactors = FALSE
                 ,dec=".",comment.char = "",quote = '\"')
subsetofdata<-subset(data,data$Date=="1/2/2007"| data$Date=="2/2/2007")
subsetofdata$Date<-as.Date(subsetofdata$Date,format =" %d/%m/%Y")
subsetofdata$Time<-strptime(subsetofdata$Time,format =" %H:%M:%S")
png("plot2.png",width=480,height=480)
subsetofdata[1:1440,"Time"]<-format(subsetofdata[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subsetofdata[1440:2880,"Time"]<-format(subsetofdata[1440:2880,"Time"],"2007-02-02 %H:%M:%S")
plot(subsetofdata$Time,as.numeric(as.character(subsetofdata$Global_active_power)),type = "l",xlab = "",ylab = "Global Active Power(killowatts)")
title(main = "Global Active Power Vs Time")
dev.off()
