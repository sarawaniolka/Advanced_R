### Adding elements
ls()
x
y <- 123
ls()

e <- new.env()
attr(e, "name") <- "test"
e

rm(x, y)
ls()

rm(x)
eval(quote(x <- 2), envir = e)
x
ls(envir = e)
e$x

rm(e)

e <- new.env(parent = emptyenv())
attr(e, "name") <- "test"
e
parent.env(e)
eval(quote(x <- 222), envir = e)

e$x <- 2
e$`<-` <- `<-`
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

e["z"]

get(x = "z", envir = e)
get(x = "<-", envir = e)
e$data.frame <- data.frame
get(x = "data.frame", envir = e)

rm(e)
