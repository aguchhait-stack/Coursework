.libPaths()
getwd()
library("fda")
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
##Monthly
temp <- CanadianWeather$monthlyTemp[, "Vancouver"]
time <- 1:12
basis <- create.fourier.basis(c(1, 12), nbasis = 7)
temp_fd <- smooth.basis(time, temp, basis)$fd
plot(temp_fd, xlab="Month", ylab="Temperature")
points(time, temp, pch=16)
## 365*35*3 Array
dimnames(CanadianWeather$dailyAv)
day <- 1:365
temp_daily <- CanadianWeather$dailyAv[, , "Temperature.C"]
basis_day <- create.fourier.basis(c(1, 365), nbasis = 65)
temp_fd_daily <- smooth.basis(day, temp_daily, basis_day)$fd
plot(temp_fd_daily, col=1:5, lwd=2)
class(CanadianWeather)
str(CanadianWeather$monthlyTemp)
str(growth)
# girl
girl1<- growth$hgtf[, "girl01"]
plot(growth$age, girl1, type="o",
     xlab="Age (years)",
     ylab="Height (cm)",
     main="Growth curve for girl01")
View(growth)
growth$age
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
