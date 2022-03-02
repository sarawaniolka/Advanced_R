library(pryr)

#Typical functions

where()
exists()

exists(x = "plot", envir = emptyenv())
exists(x = "f5", envir = parent.env(globalenv()))
exists(x = "plot", inherits = FALSE)
exists(x = "plot", inherits = TRUE)
exists(x = "plot", inherits = FALSE, envir = baseenv())

plot <- 123
where("plot", env = globalenv())
rm(plot)
where("plot", env = globalenv())