# Write a function with a call counter persistent through calls. The function has to have a possibility to reset the counter, leaving no traces behind.

f <- function(){
  if(exists(x="n", inherits = FALSE)){
    n <- n+1
  } else {
    n <-1
  }
  n
}

f() # does not work


f <- function(reset=FALSE){
  if(!reset){
    # check for environment
    if ("counter" %in% search()){
      e <- parent.env(globalenv())
      e$n <- e$n + 1
      print(e$n)
    } else {
      attach(what = list(n=1), name="counter")
      e <- parent.env(globalenv())
      print(e$n)
    }
    
  } else{
    detach(name="counter")
  }
}

f(reset = TRUE)
f()
