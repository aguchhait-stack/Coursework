.libPaths()
getwd()
library("fda")
library(dplyr)
data(package='dplyr')
data(package="fda")
data("CanadianWeather")
?CanadianWeather
CanadianWeather$place
names(CanadianWeather)
load("growth.rda")
getwd()
ls()
View(growth)
glimpse(growth)
summary(growth)
library(deplyr)
str(growth)
View(CanadianWeather)
glimpse(CanadianWeather)
library(dplyr)
str(CanadianWeather)
library(fda)
str(CanadianWeather)
class(CanadianWeather)
str(CanadianWeather$monthlyTemp)
str(growth)
str(CanadianWeather)
str(CanadianWeather$region)
?CanadianWeather
# girl
girl1<- growth$hgtf[, "girl01"]
plot(growth$age, girl1, type="o",
     xlab="Age (years)",
     ylab="Height (cm)",
     main="Growth curve for girl01")

View(growth)
growth$age
b <- array(matrix(1:36,ncol=4),dim=c(3,4,3))
b
aperm(b)
b[2,3,3]
b[c(2),c(3),2]
m1 <- matrix(1:4,2,2)
m2 <- matrix(5:8,2,2)
add <- m1+m2
sub <- m1-m2
list(add,sub)
mat2 <- matrix(c(1,2,3,4),2,2)
trans <- t(mat2)
trans
inverse <- solve(mat2)
inverse
m <- matrix(c(10,20,30,40),byrow=TRUE,2,2)
solve(m)
v <- c('L','L','L','H')
m <- factor(v)
levels(m) <- c('Low','High')
summary(m)
f <- factor(v,levels=c('H','L'))
summary(f)
m <- matrix(21:36,nrow=4)
m[2:4,3:4]
