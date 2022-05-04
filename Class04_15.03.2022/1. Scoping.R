### cleaning
rm(list = ls())

### checking execution environment
f <- function(){
  environment()
}

f()

environment(f)


### execution environment is always created anew
g <- function(){
  if(!exists("x", inherits = FALSE)){
    x <- "does not exist"
  } else {
    x <- "does exist"
  }
  x
}

g()

### execution environment’s parent
f <- function(){
  e <- environment()
  list("execution" = e, "parent of execution" = parent.env(e))
}

f()

### enclosing environment
environment(f)

### testing
rm(list = ls())
e <- new.env()
parent.env(e)

eval(
  expr = quote(
    f <- function(){
      e <- environment()
      list("execution" = e, "parent of execution" = parent.env(e))
    }
  ),
  envir = e
)

f
e$f
e
e$f()
e
environment(e$f)
a <- e$f()
a[[1]]
a[[2]]
e
parent.env(a[[2]])

### Static scoping
rm(list = ls())

f <- function(){
  x <- "static fox"
  x
}

f()
x <- "jumping fox"
f()

g <- function(){
  f()
}

g()
environment(g)
x <- "running brown fox"
g()
