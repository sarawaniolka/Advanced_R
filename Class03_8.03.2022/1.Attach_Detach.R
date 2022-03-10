### Cleaning
rm( list = ls())

### Adding and removing environments
config <- list( os = "macOS", "type" = "Monterey")
config

search()
attach( config, name = "config")
search()
ls( envir = parent.env( globalenv()))
rm( list = ls())
ls()
os
type
detach( name = "config")
search()

### Attaching a tibble as an environment
library(tibble)
a <- tibble(x=rnorm(100), y=1+2*x*rnorm(100))
plot(a$x, a$y, pch=20) #dollar signs needed
attach(a)
plot(x,y,pch=20)
detach(a)
#this is risky


### Better way (with):
with(a, plot(x,y,pch=20))
