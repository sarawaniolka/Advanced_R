#' Graph constructor
#'
#' This function is for constructing graphs.
#'
#' @param nodes A vector of integers (vertices).
#' @param links A list of vectors (edges).
#' @return A list representing a graph.

#' @export
graph <- function(nodes, links){
  list(nodes = nodes, links = links)
}
