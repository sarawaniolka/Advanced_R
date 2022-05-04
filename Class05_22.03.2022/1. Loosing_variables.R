### cleaning
rm(list = ls())

### static scoping and lost variables
f <- function() {
  x^2
}

### correct usage
x <- 2
f()

### wrong usage
g <- function() {
  x <- 5
  y <- f()
  print(y)
}

g()
 