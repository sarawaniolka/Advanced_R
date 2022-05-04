#Problem. Write a function implementing dynamic scoping for selected variables.
### definition
f1 <- function(env) {
  env$x^2
}

f2 <- function() {
  parent.frame()$x^2
}

### examples
x <- 3
f1(env = globalenv())

g <- function() {
  x <- 5
  y <- f1(environment())
  print(y)
}

g()

x <- 4
f2()

g <- function() {
  x <- 5
  y <- f2()
  print(y)
}

g()


# Problem. Write a function creating an “object” representing an undirected graph and basic methods related to the graph, including typical getter, 
# e.g., getNodes, getLinks, and a plot method visualizing the graph.

### definition
graph <- function(nodes, links) {
  ## container
  e <- new.env(parent = emptyenv())
  ## data
  e$nodes <- nodes
  e$links <- links
  ## methods
  ## e$getNodes <- function() {e$nodes}
  e$getNodes <- function() {nodes}
  environment(e$getNodes) <- e
  e$getLinks <- function() { links}
  environment(e$getLinks) <- e
  e$plot <- function(...) {
    l <- length(nodes)
    x <- rnorm(l)
    y <- rnorm(l)
    base::plot(x, y, ...)
  }
  environment(e$plot) <- e
  ## imports
  e[["{"]] <- `{`
  e$rnorm <- rnorm
  e[["<-"]] <- `<-`
  e$length <- length
  e[["$"]] <- `$`
  e[["::"]] <- `::`
  ## returnig
  e
}

### examples
nodes <- 1:4
links <- data.frame(from = c(1, 1, 3, 2), to = c(2, 4, 4, 4))
g1 <- graph(nodes = nodes, links = links)

g1
ls(envir = g1)
g1$nodes
g1$links
g1$getNodes()
g1$getLinks()
g1$plot(pch = 5, col = "blue")
