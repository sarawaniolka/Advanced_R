#' Plotting graphs
#'
#' This function is for plotting graphs.
#'
#' @param g A list representing a graph.
#' @param ... Aditional style arguments.
#' @return Graph (invisibly).
#'
#' @importFrom stats rnorm
#' @importFrom graphics lines
#' @importFrom graphics plot

#' @export
plotgraph <- function(g, ...){
  ## Plotting
  n <-length(g$nodes)
  x <- rnorm(n)
  y <- rnorm(n)
  plot(x=x, y=y, ...)
  plot_link <- function(e, ...){
    lx <- x[e]
    ly <- y[e]
    lines(lx, ly, ...)
  }
  sapply(X=g$links, FUN = plot_link)
  ## Returning
  invisible(g)
}
