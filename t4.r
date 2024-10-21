
#1 Upload the built-in dataset called 'airquality' in R Studio.

#install.packages("tidyverse")


#2 Code to display the entire dataset.
library(tidyverse)
dataset<-airquality
view(dataset)
print(airquality)


#3 Display the first and last seven rows of data in the dataset.
head(dataset,7)
tail(dataset,7)


#4 Display an overview of the dataset, including statistics such as mean, median, 
#  minimum, maximum, etc. 
summary(airquality)


#5 Create a histogram to display the distribution of temperatures (Temp column) in the 
#  dataset. 
hist(dataset$Temp)


#6 Customize the histogram by changing the color scheme and adding a title.
hist(dataset$Temp,main = "Distribution of temperatures",
     xlab ="temperature",ylab = "Frequency",col = "lightblue")


#7 Create another histogram to visualize the frequency of days based on wind speed 
#  (Wind column).
hist(dataset$Wind,main = "Frequency of days based on wind",
     xlab ="wind",ylab = "Frequency",col = "red")


#8 Create a pie chart to visualize the proportion of days with different temperature 
#  ranges.
data(airquality)
airquality$TempRange<-cut(airquality$Temp,breaks =c(50,60,70,80,90,100),include.lowest = TRUE)
temp_counts<-table(airquality$TempRange)
colors<-c('red','blue','green','yellow','purple')
pie(temp_counts,main = "Temperature Ranges",col = colors,labels = paste(names(temp_counts),
                                                "\n",round(100*temp_counts/sum(temp_counts),1),"%"))


#9 Create a pie chart to visualize the distribution of wind speeds.
wind_counts<-na.omit(airquality$wind)
wind_categories<-cut(wind_counts,
                     breaks=c(0,5,10,15,20,25),
                     labels=c("0-5","5-10","10-15","15-20","20-25"))
wind_fre<-table(wind_categories)
pie(wind_fre,main = "Wind Speeds")



#10  Modify the pie charts to include labels, change colors, and customize them. 
wind_counts<-na.omit(airquality$Wind)
wind_categories<-cut(wind_counts,
                     breaks = c(0,5,10,15,20,25),
                     labels = c("0-5","5-10","10-15","15-20","20-25"))
wind_freq<-table(wind_categories)
pie(wind_freq,main = "Wind speeds",col=rainbow(length(wind_freq)))









