#' Graph constructor
#' This function is for constructing graphs.
#'
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' @param nodes A vector of integers
#' @param links A list of vectors (edges)
#' @return A list representing a graph.
#' @export
graph <- function(nodes, links) {
  list(nodes=nodes, links=links)
}



