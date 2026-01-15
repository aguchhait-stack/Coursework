x <- 1:10
str(x)
x <- c(name=c('arijit','mouli'),age=c(20,30))
x[c(1,3)]
x[-c(1,3)]
x[x=='roy']
x <- c(10,20,30)
names(x) <- c('arijit','mouli','rajita')
x
x=c(arijit=10,"mouli guchhait"=20,rajita=30)
x
df <- data.frame(Name=names(x),score=as.numeric(x))
df
m <- matrix(1:9,nrow=3,byrow=TRUE,dimnames=list(c('x1','x2','x3'),c('y1','y2','y3')))
m[,3]
y <- factor(c('Female','Male','Female','Male','Female','Female'),
            levels=c('Male','Female','Trans'),
            labels=c('M','F','N'))
table(y)
z <- factor(c('United States','United Kingdom'),
            levels=c('United States','United Kingdom','India'),
            labels = c('US','UK','IN'))
table(z)
summary(z)
z <- factor(c('slow','fast','slow','Medium','Medium'),
            ordered = TRUE,
            levels=c('slow','Medium','fast'),
            labels=c('S','M','H'))
summary(z)
table(z)
x <- 1:10
y <- factor (c('A','B','B','A','C','B'),
             levels=c('A','B','C'))
z <- data.frame(x,y)
w <- c(TRUE,FALSE,TRUE,TRUE,FALSE)
k=list(A=x,B=y,C=z,D=w)
k[['C']]
k$B[1:3,]
x <- data.frame(Name=c('Murcury','Jupyter','Venus',
                       'Sun'),Diameter=c(45,55,66,NA),
                'Planet'=c(TRUE,TRUE,TRUE,FALSE))
summary(x)
str(x)
x[c(1,3),]
y <- x[,-3]
x[x$Diameter>=50 & !is.na(x$Diameter),]
x=x[order(x$Diameter,decreasing =TRUE),]
x[duplicated(x),]
x <- unique(x)
x$Diameter <- x$Diameter-10
unique(x)
head(x)
View(x)
summary(x)
str(x)
library(dplyr)
dplyr::glimpse(x)
glimpse(mtcars)
mtcars[duplicated(mtcars),]
name='Arijit'
age=32
is_local=TRUE
x <- c(name=name,age=age,is_local=is_local)
x <- list(name=name,age=age,is_local=is_local)
x
