###Problem. Write a function listing all environments (starting with a given one) 
###in the standard and recursive versions.


### Example of a recursive function
f <- function(n) {
  ## stop
  if(n == 0) {
    return(1)
  }
  ## recursion
  n * f(n-1)
}

### Example
f(0)
f(1)
f(2)
f(3)
f(4)

### Simple non-recursive version
listEnvs <- function(startEnv) {
  ## convenience function
  last <- function(s) { s[[length(s)]]}
  ## function
  ret <- list(startEnv)
  while(!identical(emptyenv(), last(ret))) {
    ret <- c(ret, list(parent.env(last(ret))))
  }
  ret
}

### Example
listEnvs(globalenv())

### Recursive version
listEnvs <- function(envs = list(globalenv())) {
  last <- function(s) { s[[length(s)]] }
  ## stop conditions
  if(identical(last(envs), emptyenv())) {
    return(envs)
  }
  ## recursion
  listEnvs(c(envs, list(parent.env(last(envs)))))
}

### Example
listEnvs()