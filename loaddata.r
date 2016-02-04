df_raw<-read.table("household_power_consumption.txt", header=T, sep=";", 
                   colClasses=c("character","character","double","double","double","double","double","double","numeric"), na.strings="?")
df<-df_raw[df_raw$Date=="1/2/2007" | df_raw$Date=="2/2/2007",]

df$Date<-as.Date(df$Date, format="%d/%m/%Y")
df$Time<-strptime(paste(df$Date,df$Time), format="%Y-%m-%d %H:%M:%S")

locale_original <- Sys.getlocale( category = "LC_TIME" )
 Sys.setlocale("LC_TIME", "English")