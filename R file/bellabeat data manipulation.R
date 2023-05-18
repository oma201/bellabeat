# installing data packages
library(tidyverse)
library(dplyr)
library(magrittr)
install.packages("compare")
library(compare)
install.packages("diffobj")
library(diffobj)
library(ggplot2)
# import data 
general_data_base<-read.csv("dailyActivity_merged.csv")
daily_calories<- read.csv("dailyCalories_merged.csv")
daily_intensities<- read.csv("dailyIntensities_merged.csv")
daily_steps <- read.csv("dailySteps_merged.csv")
heart_rate <- read.csv("heartrate_seconds_merged.csv")
hourly_calories <- read.csv("hourlyCalories_merged.csv")
# comparing the data contained in similar data frames 
identical(general_data_base$Calories, daily_calories$Calories)
identical(daily_calories$Calories, general_data_base$Calories)
identical(daily_calories$Id, general_data_base$Id)
identical(daily_calories$ActivityDay, general_data_base$ActivityDate)
setdiff(daily_calories$ActivityDay, general_data_base$ActivityDate)
daily_calories %>% filter(ActivityDay %in% c("4/12/2016", "5/1/2016","5/2/2016","5/3/2016","5/4/2016","5/5/2016","5/6/2016","5/7/2016","5/8/2016","5/9/2016","5/10/2016","5/11/2016","5/12/2016"))
summarize(general_data_base)
# dealing with data typo in data frames 
general_data_base %>% filter(ActivityDate %in% c("4/12/2016", "5/1/2016","5/2/2016","5/3/2016","5/4/2016","5/5/2016","5/6/2016","5/7/2016","5/8/2016","5/9/2016","5/10/2016","5/11/2016","5/12/2016"))
daily_calories[which(daily_calories$ActivityDay == "4/12/2016"), "ActivityDay"] <- "04/12/2016"
daily_calories[which(daily_calories$ActivityDay == "5/1/2016"), "ActivityDay"] <- "05/01/2016"
daily_calories[which(daily_calories$ActivityDay == "5/2/2016"), "ActivityDay"] <- "05/02/2016"
daily_calories[which(daily_calories$ActivityDay == "5/3/2016"), "ActivityDay"] <- "05/03/2016"
daily_calories[which(daily_calories$ActivityDay == "5/4/2016"), "ActivityDay"] <- "05/04/2016"
daily_calories[which(daily_calories$ActivityDay == "5/5/2016"), "ActivityDay"] <- "05/05/2016"
daily_calories[which(daily_calories$ActivityDay == "5/6/2016"), "ActivityDay"] <- "05/06/2016"
daily_calories[which(daily_calories$ActivityDay == "5/7/2016"), "ActivityDay"] <- "05/07/2016"
daily_calories[which(daily_calories$ActivityDay == "5/8/2016"), "ActivityDay"] <- "05/08/2016"
daily_calories[which(daily_calories$ActivityDay == "5/9/2016"), "ActivityDay"] <- "05/09/2016"
daily_calories[which(daily_calories$ActivityDay == "5/10/2016"), "ActivityDay"] <- "05/10/2016"
daily_calories[which(daily_calories$ActivityDay == "5/11/2016"), "ActivityDay"] <- "05/11/2016"
daily_calories[which(daily_calories$ActivityDay == "5/12/2016"), "ActivityDay"] <- "05/12/2016"
identical(general_data_base$id,daily_intensities$id)
identical(general_data_base$ActivityDate,daily_intensities$ActivityDay)
setdiff(daily_intensities$ActivityDay, general_data_base$ActivityDate)
daily_intensities[which(daily_intensities$ActivityDay == "4/12/2016"), "ActivityDay"] <- "04/12/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/1/2016"), "ActivityDay"] <- "05/01/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/2/2016"), "ActivityDay"] <- "05/02/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/3/2016"), "ActivityDay"] <- "05/03/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/4/2016"), "ActivityDay"] <- "05/04/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/5/2016"), "ActivityDay"] <- "05/05/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/6/2016"), "ActivityDay"] <- "05/06/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/7/2016"), "ActivityDay"] <- "05/07/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/8/2016"), "ActivityDay"] <- "05/08/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/9/2016"), "ActivityDay"] <- "05/09/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/10/2016"), "ActivityDay"] <- "05/10/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/11/2016"), "ActivityDay"] <- "05/11/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/12/2016"), "ActivityDay"] <- "05/12/2016"
identical(general_data_base$SedentaryMinutes,daily_intensities$SedentaryMinutes)
identical(general_data_base$LightlyActiveMinutes,daily_intensities$LightlyActiveMinutes)
identical(general_data_base$FairlyActiveMinutes,daily_intensities$FairlyActiveMinutes)
identical(general_data_base$VeryActiveMinutes,daily_intensities$VeryActiveMinutes)
identical(general_data_base$ActivityDate,daily_steps$ActivityDay)
setdiff(daily_steps$ActivityDay, general_data_base$ActivityDate)
daily_steps[which(daily_steps$ActivityDay == "4/12/2016"), "ActivityDay"] <- "04/12/2016"
daily_steps[which(daily_steps$ActivityDay == "5/1/2016"), "ActivityDay"] <- "05/01/2016"
daily_steps[which(daily_steps$ActivityDay == "5/2/2016"), "ActivityDay"] <- "05/02/2016"
daily_steps[which(daily_steps$ActivityDay == "5/3/2016"), "ActivityDay"] <- "05/03/2016"
daily_steps[which(daily_steps$ActivityDay == "5/4/2016"), "ActivityDay"] <- "05/04/2016"
daily_steps[which(daily_steps$ActivityDay == "5/5/2016"), "ActivityDay"] <- "05/05/2016"
daily_steps[which(daily_steps$ActivityDay == "5/6/2016"), "ActivityDay"] <- "05/06/2016"
daily_steps[which(daily_steps$ActivityDay == "5/7/2016"), "ActivityDay"] <- "05/07/2016"
daily_steps[which(daily_steps$ActivityDay == "5/8/2016"), "ActivityDay"] <- "05/08/2016"
daily_steps[which(daily_steps$ActivityDay == "5/9/2016"), "ActivityDay"] <- "05/09/2016"
daily_steps[which(daily_steps$ActivityDay == "5/10/2016"), "ActivityDay"] <- "05/10/2016"
daily_steps[which(daily_steps$ActivityDay == "5/11/2016"), "ActivityDay"] <- "05/11/2016"
daily_intensities[which(daily_intensities$ActivityDay == "5/12/2016"), "ActivityDay"] <- "05/12/2016"
identical(general_data_base$TotalSteps,daily_steps$StepTotal)
# this file for large data frames in this project 
# working with heart rate data frame 
summary(heart_rate)
# checking data validity 
# Filter to only show IDs with a number of elements different than 10
table(heart_rate$id)[nchar(names(table(heart_rate$id))) != 10]
# how many of this sample of clients 
length(unique(heart_rate$Id))
# check 
summary(heart_rate)
# data cleaning 
# check if there is any null values
any(is.na(heart_rate$Id))
any(is.na(heart_rate$Time))
any(is.na(heart_rate$Value))
# Extract day, month, and year from time column
heart_rate$day <- as.numeric(format(as.POSIXct(heart_rate$Time, format="%m/%d/%Y %H:%M:%S"),"%d"))
heart_rate$month <- as.numeric(format(as.POSIXct(heart_rate$Time, format="%m/%d/%Y %H:%M:%S"),"%m"))
heart_rate$year <- as.numeric(format(as.POSIXct(heart_rate$Time, format="%m/%d/%Y %H:%M:%S"),"%Y"))
# Combine day, month, and year into a new date column
heart_rate$date <- as.Date(paste(heart_rate$day, heart_rate$month, heart_rate$year, sep = "-"), format = "%d-%m-%Y")
# Extract time
heart_rate$hour <- as.numeric(format(as.POSIXct(heart_rate$Time, format="%m/%d/%Y %H:%M:%S"),"%H"))
# Add 12 to the hour if it is in the PM
heart_rate$hour <- ifelse(format(as.POSIXct(heart_rate$Time, format="%m/%d/%Y %I:%M:%S %p"),"%p") == "PM",
                          heart_rate$hour + 12, 
                          heart_rate$hour)
# group the data by date and count the number of usage
usage_by_day <- heart_rate %>% 
  group_by(date) %>% 
  summarize(n_devices =n() )
usage_by_day$day <- weekdays(usage_by_day$date)
usage_by_hour <- heart_rate %>% 
  group_by(hour) %>% 
  summarize(n_devices =n() )
na.omit(usage_by_day)

# create the line chart that tells how many usage of device for every day
ggplot(usage_by_day, aes(x = date, y = n_devices/1000)) +
  geom_col() +
  labs(x = "Date", y = "Number of devices used/1000")
# create the line chart that tells how many usage of device for every week day
ggplot(usage_by_day, aes(x = day, y = n_devices/1000)) +
  geom_col() +
  labs(x = "Date", y = "Number of devices used/1000")
# create the line chart that tells how many usage of device for day hours
ggplot(usage_by_hour, aes(x = hour, y = n_devices/1000)) +
  geom_col() +
  labs(x = "Hour", y = "Number of devices used/1000")
# Extract the day of the week
heart_rate$weekday <- weekdays(heart_rate$date)
# Filter heart rate data where heart rate > 90 bpm
heart_rate_above_90 <- heart_rate %>% filter(Value > 90)

# Count the number of occurrences of heart rate above 90 bpm for each weekday
heart_rate_above_90_weekday_count <- heart_rate_above_90 %>% 
  group_by(weekday) %>% 
  summarize(count = n())

# Create a bar chart that compares the number of occurrences of heart rate above 90 bpm for each weekday
ggplot(heart_rate_above_90_weekday_count, aes(x = weekday, y = count)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(x = "Weekday", y = "Number of occurrences of heart rate > 90 bpm")
# Count the number of occurrences of heart rate above 90 bpm for each day hour
heart_rate_above_90_hours_count <- heart_rate_above_90 %>% 
  group_by(hour) %>% 
  summarize(count = n())
# Create a bar chart that compares the number of occurrences of heart rate above 90 bpm for each day hour
ggplot(heart_rate_above_90_hours_count, aes(x = hour, y = count)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(x = "hour", y = "Number of occurrences of heart rate > 90 bpm")
write.csv(heart_rate, file = "heart_rate_R.csv", row.names = FALSE)
write.csv(heart_rate_above_90_weekday_count, file = "heart_rate_day.csv", row.names = FALSE)
write.csv(heart_rate_above_90_hours_count, file = "heart_rate_hours.csv", row.names = FALSE)
