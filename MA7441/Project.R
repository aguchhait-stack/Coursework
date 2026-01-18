#### 1. Describes each reported road traffic collision, including location, time, road characteristics, environmental conditions, and overall collision severity.

# 1.2- How does reported collision severity vary by road type and speed limit?
# 1.3- Are collisions more common at junctions or on non-junction road segments?
# 1.4- How does the number of collisions vary geographically across police force areas?
# Load package
library(dplyr)
library(ggplot2)
library(readr)
df <- read_csv('/Users/arijitguchhait/Desktop/mydb/MA7441/Data/dft-road-casualty-statistics-collision-provisional-2025.csv')
View(df)
## Missing Value
colSums(is.na(df))[colSums(is.na(df))>0]
## Dublicate
df[duplicated(df),] ### Zero duplicate
df$date <- as.Date(df$date,format="%d/%m/%Y")
df$time <- as.integer(substr(df$time,1,2))
df$month <- as.numeric(format(df$date,"%m"))
names(df)
# 1.1- What proportion of collisions occur under different weather and light conditions?
table(df$weather_conditions)
table(df$light_conditions)
df$weather_conditions_labels <- factor(df$weather_conditions,
                                      levels = c(1,2,3,4,5,6,7,8,9,-1),
                                      labels=c("fine",
                                               "raining",
                                               "snowing",
                                               "others",
                                               "others",
                                               "others",
                                               "others",
                                               "others",
                                               "others",
                                               "n/a"))
df$light_conditions_labels <- factor(df$light_conditions,
                                     levels = c(1,4,5,6,7,-1),
                                     labels=c("daylight",
                                              "darkness_with_lights",
                                              "darkness",
                                              "darkness",
                                              "darkness_unknown",
                                              "n/a"))
table(df$weather_conditions_labels)  
table(df$light_conditions_labels)
df %>% filter(light_conditions_labels !='n/a' & weather_conditions_labels!='n/a') %>% 
  ggplot(aes(x = weather_conditions_labels, fill = light_conditions_labels)) + 
  geom_bar(position="fill")+scale_y_continuous(labels = scales::percent)+
  labs(x="Weather Condition",y="Proportion of Collisions",fill="Light Conditions",
       title="Weather and Light conditions for collisions")

