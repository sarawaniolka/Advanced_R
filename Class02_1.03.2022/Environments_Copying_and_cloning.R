### Cleaning
rm(list = ls())

### Creating and environment
e <- new.env()
attr(e, "name") <- "test"
e

### Adding elements
e$x <- 0
e$x

### Copying an environment
eCopy <- e
e
eCopy

eCopy$x
eCopy$x <- 1
eCopy$x
e$x

### Cloning an environment
eClone <- as.environment(as.list(e))
eClone$x
eClone$x <- 2
eClone$x
eCopy$x
e$x

parent.env(eClone)
parent.env(eClone) <- globalenv()
parent.env(eClone)