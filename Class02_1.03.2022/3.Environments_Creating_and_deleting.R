### Creating a new environment
e <- new.env()
e
parent.env(e)
attr(e, "name") <- "newEnv"
e
e$x <- data.frame(id = 1:10^3, value = rnorm(10^3))

e2 <- new.env(parent = emptyenv())
e2
parent.env(e2)

search()

### Removing environment
ls()
head(e$x)
object.size(e$x)
object.size(e)
typeof(e)
rm(e)
ls()

gc()
gcinfo(verbose = TRUE)

e2$x <- data.frame(id = 1:10^6, value = rnorm(10^6))
rm(e2)
x <- 2

e0 <- new.env(parent = emptyenv())
e1 <- new.env(parent = e0)
e0test <- parent.env(e1)
identical(e0, e0test)
parent.env(parent.env(e1))

rm(e0, e0test, e1)
