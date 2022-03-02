### The simplest function
f1 <- function(){}

### A function without arguments
f2 <- function(){
  print("Hello")
}

### A function with a single argument
f3 <- function(x){
  x^2
}

### A function with two arguments 
f4 <- function(x, y, z){
  x^y - z
}

### Default values
f5 <- function(x, y = 1){
  x^y
}

### Functions as arguments and the … argument 
f6 <- function(x, f = identity, ...){
  plot(x, f(x), ...)
}

f6(seq(-pi, pi, length.out = 1000),
   function(x){ sin(x^2) * cos(x^2)},
   col = "red", fg = "maroon", lwd = 2, type = "l", las = 1)
