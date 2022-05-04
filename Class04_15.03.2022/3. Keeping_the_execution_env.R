### cleaning
rm(list = ls())

### new environment
e <- new.env()

### wrong definition
defSymbol <- function(sym, val, env){
  env$sym <- val #sym is treated as a name, not variable
}

ls()
defSymbol(x, 1, globalenv())
ls()

### right definition
defSymbol <- function(sym, val, env){
  env[[sym]] <- val
}

ls()
defSymbol("x", 123, globalenv())
ls()
x



### cleaning
rm(list = ls())

### definition
f <- function(n){
  e <- new.env(parent = emptyenv())
  e$x <- rnorm(1)
  e
}

x <- f()
x
parent.env(x)
ls(envir = x)
x$x

y <- f()
y
parent.env(y)
y$x

x
y

g <- function(n){
  localVar <- TRUE
  e <- new.env() #the parent is where you called the function - the execution environment here
  e$x <- rnorm(1)
  e
}

x <- g()
x
ls(envir = x)
x$x
parent.env(x)
ls(envir = parent.env(x))
parent.env(x)$localVar
parent.env(x)$localVar <- FALSE
parent.env(x)$localVar #it's false now
parent.env(parent.env(x))
