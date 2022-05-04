### cleaning
rm(list = ls())

### examples
x <- 1

f <- function(){
  print(x)
}

f()
x <- 2
f()

g <- function(){
  x <- 123
  print(x)
}

g()
x

h <- function(){
  e <- parent.env(environment())
  n <- 10
  e$x <- rnorm(n) #I start with looking within the function
}

x
n <- 1
h()
x

h1 <- function(){
  e <- parent.env(environment())
  n <- 1
  eval(quote(x <- rnorm(n)), envir = e) #I start with looking in the global environment, not inside the function
}

n <- 10
h1()
x

n <- 1
h()
x
h1()
x
