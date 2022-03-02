#Problem. Write a function searching for a given symbol, 
#taking into account the type and shadowing. 
#Implement the standard and recursive versions.


searchForSymbol <- function(sym, t, env=globalelnv()){
  li <- list()
  while(!identical(env, emptyenv())){
    if (exists(sym, env, inherits = FALSE)){
      if (typeof(get(sym, inherits = FALSE, envir=env)) == t){
      li <- c(li,list(env))
      }
    }
    env = parent.env(env)
  }
  li
}

searchForSymbol("plot", "closure", env = globalenv())
plot <- 2L
searchForSymbol("plot", "integer", env = globalenv())

#

searchForSymbol <- function(sym, t, envs=list(), cenv=NULL){
  # stopping condition
  if(identical(cenv,emptyenv())){
    return(envs)
  }
  if(exists(x=sym, envir=cenv, inherits = FALSE)){
    #append to the list of envs
    if(identical(t, typeof(get(x=sym, envir=cenv, inherits = FALSE)))){
      envs <- c(envs, list(cenv))
    }
  }
  searchForSymbol(sym, t, envs, parent.env(cenv))
}

searchForSymbol(sym="plot", t= "closure", cenv = globalenv())

