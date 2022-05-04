### cleaning
rm(list = ls())

### libraries
library(pryr)

### example
f <- function(){
  print(x)
}

x <- "jane"
f()
environment(f)
environment(f) <- baseenv()
f()

where("print")

e <- new.env()
parent.env(e)
e$x <- "jumping fox"
environment(f) <- globalenv()
f()
environment(f) <- e
f()

environment(plot)

plot
  