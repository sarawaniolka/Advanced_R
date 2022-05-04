# Function factory - creates a function within a function

### cleaning
rm(list = ls())

### Function factory
f <- function(x){
  print(environment())
  function(y){ y + x + z}
}

h2 <- f(2)
h2(1)
z <- 100
h2(1)

f <- function(x){
  z <- 10
  function(y){ y + x + z}
}

h3 <- f(3)
rm(z)
h3(1)
z <- 10000
h3(1)
ls(envir = environment(h3))

environment(h3)$z <- -100
h3(0)
h3

x <- 999
h3(0)
get("x", envir = environment(h3))
environment(h3)$x <- -1000
h3(0)


### cleaning
rm(list = ls())

### example
f <- function() {
  x <- TRUE
  environment()
}

a <- f()
ls(envir = a)
a$x