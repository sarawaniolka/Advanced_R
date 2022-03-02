library(pryr)

#Typical functions

where()
exists()


# Checks if a function exists in a given environment
exists(x = "plot", envir = emptyenv())
exists(x = "f5", envir = parent.env(globalenv()))

# Checks if the function exists in a global environment
exists(x = "plot", inherits = FALSE)

# checks if the function exists in a global and then upper environments
exists(x = "plot", inherits = TRUE)

# Checks if the function exists in a base environment
exists(x = "plot", inherits = FALSE, envir = baseenv())

plot <- 123
where("plot", env = globalenv())
rm(plot)
where("plot", env = globalenv())