library("tidyverse")

setwd("/home/user/Documents/Private/MLearning/yearInRevision/")
readfile <- "report_cleaned.csv"
myvalues <- read.csv(readfile, sep=",", header=FALSE)

names(myvalues) <- c("activity", "length", "start", "end", "comment")

days <- data.frame(days=substring(myvalues$start,1,10))
myvalues["days"] <- days

ggplot(data = myvalues)+ 
  geom_count(mapping = aes(y = myvalues$length, x = myvalues$days, shape = myvalues$activity))

ggplot(data = myvalues)+ 
  geom_count(mapping = aes(y = myvalues$activity, x = myvalues$days))

myvalues %>% arrange(activity) %>% group_by(activity) %>% summarise(value = n()) -> base_values

std_date <- "%Y-%m-%d"
day_diff <- as.numeric(difftime(strptime("2014-01-03", format = std_date),
         strptime("2013-11-14", format = std_date), units="days"))
##---
library("anytime")
anydate(1450478952)


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))


# SUMMARY DATA

readfile <- "report_summary.csv"
summarydata <- read.csv(readfile, sep=",", header=FALSE)
names(summarydata) <- c("activity", "time", "percent")

test <- as.numeric(gsub(",",".",summarydata$percent))

alldata <- summarydata[-nrow(summarydata),]

alldata$percent <- as.numeric(gsub(",",".",alldata$percent))

topdata <- subset(alldata,  alldata$activity=="Hygiene"|
                    alldata$activity=="Sleep"|
                    alldata$activity=="Transport" |        
                    alldata$activity=="Study"|
                    alldata$activity=="GTD" |
                    alldata$activity=="Necessities" |
                    alldata$activity=="Finance" |
                    alldata$activity=="Work" |
                    alldata$activity=="Fun" |
                    alldata$activity=="Sport" |
                    (alldata$activity=="Friends" &alldata$percent > 10)|
                    alldata$activity=="Food")

## VISUALISE
sortedtopdata <- topdata[with(topdata, order(as.numeric(percent))), ]

vizdata <- sortedtopdata

ggplot(data = vizdata)+
  geom_col(mapping = aes(y = vizdata$percent, x = vizdata$activity))+
  labs(x = "Activity", y = "%")
