
power_consumption<- read.csv("household_power_consumption.txt", header=TRUE,sep=";",nrows = 2075259,check.names = FALSE,stringsAsFactors = FALSE,comment.char = " ",quote = '\"')
power_data<-subset(power_consumption,Date %in% c("1/2/2007","2/2/2007"))
power_data$Date<- as.Date(power_data$Date, format= "%d/%m/%Y")
Active_power<-as.numeric(power_data$Global_active_power)
png("Plot1.png",width = 480, height =480)
hist(Active_power,col = "Red", main = "Global Active Power",xlab = "Global Active Power(kW)")
