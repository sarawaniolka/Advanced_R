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
object.size(e) #e consists just a reference to an object
typeof(e)
rm(e) #i did not delete the environment, just the symbol with the reference
ls()

#garbage collection
#if you delete all of the references to objects in a environment the garabge collector
# will eventually delete the environment
gc()
gcinfo(verbose = TRUE)

e2$x <- data.frame(id = 1:10^8, value = rnorm(10^8))
rm(e2)
x <- 2

gcinfo(verbose = FALSE)

e0 <- new.env(parent = emptyenv())
e1 <- new.env(parent = e0)
e0test <- parent.env(e1)
identical(e0, e0test)
parent.env(parent.env(e1))

rm(e0, e0test, e1)
