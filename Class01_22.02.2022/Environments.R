emptyenv()
baseenv()
globalenv()
environment()

#Typical functions
search()
searchpaths()
parent.env()


### Empty environment and its child
parent.env(emptyenv())
parent.env(baseenv())

### A list of environments
search()
searchpaths()

### The global environment and its parent
globalenv()
parent.env(globalenv())
parent.env(parent.env(globalenv()))

### Packages / namespaces
.packages()
.libPaths()
loadedNamespaces()