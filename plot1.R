datafile<-"/Users/riddhimab/downloads/household_power_consumption.txt"
data<-read.table(datafile,header=TRUE,sep=";",stringsAsFactors = FALSE
                 ,dec=".",comment.char = "",quote = '\"')
subsetofdata<-subset(data,data$Date=="1/2/2007"| data$Date=="2/2/2007")
globalActivePower<-as.numeric(as.character(subsetofdata$Global_active_power),na.rm=TRUE)
png("plot1.png",width=480,height=480)
hist(globalActivePower,col="red",main = "Global Active Power",xlab="Global Active Power(killowatts)",ylab = "Frequency")
dev.off()