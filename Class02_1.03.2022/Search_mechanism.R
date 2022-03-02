### Listing all symbols within an environment
ls()
ls(envir = baseenv())
ls(all.names = TRUE)
ls(envir = baseenv(), all.names = TRUE)

.x <- TRUE
ls()
ls(all.names = TRUE)
.x

### Searching for a symbol
x
plot

### Calling an exported symbol directly
plot <- function(x, f = identity, ...){
  base::plot(x, f(x), ...)
}

plot(seq(-pi, pi, length.out = 100), sin, col = "blue", pch = 20)

### MR: TODO

### Time series method
x <- ts(cumsum(rnorm(100)), start = c(2000, 1), frequency = 12)x
x
class(x)
plot.ts(x) # searching

### Method for data frames
y <- data.frame(x = sort(rnorm(100)))
y <- cbind(y, data.frame(y = 1 + 2 * y$x + rnorm(100)))
head(y)
class(y)
plot(y) # local definition
graphics::plot.data.frame(y) # symbol not exported
graphics:::plot.data.frame(y) # calling from a namespace directly
listEnvs1(list(environment(graphics:::plot.data.frame)))

rm(plot) # removing local definition
plot(y) # search