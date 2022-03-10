# Write a function returning a list of all functions’ names defined in an environment passed as an argument.
library(tibble)

l <- function(env){
  lsym <- ls(env)
  x <- mget(lsym, env)
  x <- unlist(lapply(x,class))
  lsym[x == "function"]
  
}

l(baseenv())

# Problem. Write a function returning a list of functions’ names together with a number of arguments, e.g., key = function’s name, value = number of arguments, defined in an environment passed as an argument.

listfunctions <- function(env, type="closure"){
  #selecting names of functions
  fn <- ls(envir=env)
  fd <- mget(x=fn, envir=env, inherits = FALSE)
  fi <- sapply(X=fd, FUN=typeof) ==  type
  fn <- fn[fi]
  fd <- fd[fi]
  #calculating the nb of arguments
  fa <- sapply(X=fd, FUN=function(d){length(formals(d))})
  #return
  tibble(name = fn, numOfArguments = fa)
}

listfunctions(env=baseenv())
listfunctions(env=baseenv(), type="builtin")