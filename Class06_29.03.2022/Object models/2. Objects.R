### Cleaning
rm(list = ls())

### Vector
x <- cumsum(rnorm(100))
x
typeof(x)
class(x)
plot(x)

### Timeseries
y <- ts(cumsum(rnorm(5 * 12)), frequency = 12, start = c(2000, 1))
y
typeof(y)
class(y)
plot(y)

### Data frame
data(cars)
head(cars)
str(cars)
typeof(cars)
class(cars)
plot(cars)

### Model liniowy
z <- lm(dist ~ +1 +speed, data = cars)
summary(z)
typeof(z)
class(z)
par(mfrow = c(2,2))
plot(z)

# Checking if an object is an S3 object
### Cleaning
rm(list = ls())

d <- data.frame(id = 1:5, value = rnorm(5))
dd <- as.list(d)

d
dd

is.object(d)
is.object(dd)

ddd <- setClass("test", slots = list(value = "numeric"))(value = 5)
is.object(ddd)
attributes(ddd)
attributes(dd)
typeof(ddd)

isS4(ddd)
isS4(d)

d4 <- setRefClass("test1")()

library(R6)

objectTest <- function(o){
  is.object(o) & !isS4(o) & !is.R6(o)
}

objectTest(d)
objectTest(dd)
objectTest(ddd)
objectTest(d4)

library(pryr)
install.packages("pryr")

otype(d)
otype(dd)
otype(ddd)
otype(d4)


# Definition of a class in S3
### Cleaning
rm(list = ls())

### Attributes
x <- 1:5
x
attributes(x)
attr(x, "class") <- "myclass"
attr(x, "info") <- "These are measures of something. "
attributes(x)

### Class definition
graph <- function(v, e){
  structure(list(vertices = v, edges = e), class = "graph")
}

g1 <- graph(1, 1)
g1
attributes(g1)
otype(g1)
is.object(g1)

### Class definition
dataframeinfo <- function(info, ...){
  structure(data.frame(...), class = c("dataframeinfo", "data.frame"), info = info)
}

d1 <- dataframeinfo(id = 1:5, value = rnorm(5), info = "oExperimental data")
d1
print(d1)
print
print.default(d1)
print.data.frame(d1)
class(d1)
otype(d1)
is.object(d1)


# How to check if a function is generic
### Cleaning
rm(list = ls())

### Code
plot
data.frame

sum
list

### ftype() function
ftype(plot)
ftype(data.frame)
ftype(sum)
ftype(list)
ftype(show)
body(show)

