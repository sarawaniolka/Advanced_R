nodes <- 1:4
links <- list(c(1,2), c(2,3), c(2,4), c(3,4))

g <- graph(nodes=nodes, links=links)
search()
e <- environment(graph)
e
ls(envir=e)


while(!identical(e, emptyenv())){
  print(e)
  e <- parent.env(e)
}
