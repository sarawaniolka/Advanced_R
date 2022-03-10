###Environments connected with functions, static scoping:
#execution environment
#enclosing environment environment()
#binding environment
#calling environment parent.frame()


#Checking execution environment and its parent, checking enclosing environment. Undefined symbols in functions and scope.
### cleaning
rm(list = ls())

### checking execution environment
f <- function(){
  environment()
}

f() #env inside the function, new every single time

### execution environment is always created anew
g <- function(){
  if(!exists("x", inherits = FALSE)){
    x <- "does not exist"
  } else {
    x <- "does exist"
  }
  x
}

g() #new execution environment every time, when we quit it, it's not here

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
e$f()
e
a <- e$f()
a[[1]]
parent.env(a[[2]])

### Static scoping
rm(list = ls())

f <- function(){
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
x <- "running fox"
g()
