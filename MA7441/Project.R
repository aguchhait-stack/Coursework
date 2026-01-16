collision <- read.csv('Data/dft-road-casualty-statistics-collision-provisional-2025.csv')
library(dplyr)
glimpse(collision)
View(collision)
#### 1. Describes each reported road traffic collision, including location, time, road characteristics, environmental conditions, and overall collision severity.
# 1.1- What proportion of collisions occur under different weather and light conditions?
# 1.2- How does reported collision severity vary by road type and speed limit?
# 1.3- Are collisions more common at junctions or on non-junction road segments?
# 1.4- How does the number of collisions vary geographically across police force areas?
#### 2.Contains one record per vehicle involved in a collision, detailing vehicle type, manoeuvres, propulsion, and driver characteristics.
# 1.5- How are vehicle manoeuvres distributed at the time of collision?
# 1.6- What proportion of vehicles were turning, overtaking, or stationary at impact?
# 1.7- Are certain vehicle types more commonly involved in collisions during specific times of day?
# 1.8- How does vehicle involvement vary by propulsion type (e.g. petrol, diesel, electric)?
# 1.9- What are characteristics of drivers involved in collisions?
#### 3.Provides individual-level information on people injured or killed in collisions, including casualty role, age, sex, and injury severity.
# 1.10- What is the distribution of casualty severity (slight, serious, fatal) in reported collisions?
# 1.11- What proportions of casualties are drivers, passengers, or pedestrians?
# 1.12- Are particular age groups more frequently represented among serious or fatal casualties?
# 1.13- How does the timing of casualties vary across hours of the day?
df <- collision
## Missing Value
colSums(is.na(df))[colSums(is.na(df))>0] ### 1 missing value per 4 columns which is unimportant
## Dublicate
df[duplicated(df),] ### Zero duplicate
small_df <- df[,c('collision_index','date','time','collision_severity','number_of_vehicles','light_conditions','weather_conditions',
      'road_type','special_conditions_at_site')]
small_df$date <- as.Date(small_df$date,format="%d/%m/%Y")
small_df$time <- as.integer(substr(small_df$time,1,2))
View(small_df)
str(small_df)
### Taken from AI
num_df <- small_df[, c(
  "time",
  "number_of_vehicles",
  "collision_severity",
  "light_conditions",
  "weather_conditions",
  "road_type",
  "special_conditions_at_site"
)]

cor_matrix <- cor(num_df, use = "complete.obs")
heatmap(
  cor_matrix,
  symm = TRUE,
  main = "Correlation Matrix of Collision Variables"
)

