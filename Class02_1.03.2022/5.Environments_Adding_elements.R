### Cleaning
rm(list = ls())

### Adding elements
ls()
x <- TRUE
y <- 123
ls()

e <- new.env()
attr(e, "name") <- "test"
e

eval(quote(x <- 2), envir = e) #evaluating x=2 just in this environment, 
#doesn't change the global x
x
ls(envir = e)
e$x

rm(e)

e <- new.env(parent = emptyenv())
attr(e, "name") <- "test"
e
parent.env(e)
eval(quote(x <- 222), envir = e) #error

e$x <- 2
e$`<-` <- `<-` # i have to evaluate my own arrow
eval(quote(x), envir = e)
ls(envir = e)
e$x

e[["x"]] <- 321
e$x
e$y
e[["y"]] <- 456
e$y

x <- list()
x[["ala"]] <- TRUE
x

assign(x = "z", value = 999, envir = e)
ls(envir = e)
e$z


#Double brackets only
e[["z"]]

get(x = "z", envir = e)
get(x = "<-", envir = e)
e$data.frame <- data.frame
get(x = "data.frame", envir = e) #definition of the function

rm(e)
