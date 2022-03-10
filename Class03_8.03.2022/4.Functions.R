###Functions' construction:
# base type
# arguemnts (formals) formals()
# body body()
# closure environment()
###

### cleaning
rm(list = ls())

### simple function
f <- function(s = "default"){
  print(s)
}

typeof(f)
class(f)

formals(f)
body(f)
environment(f)

typeof(formals(f))
typeof(body(f))
typeof(environment(f))

formals(f) <- alist(x = 1)
body(f) <- quote(x^2)

f
f(2)
