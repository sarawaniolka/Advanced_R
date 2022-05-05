install.packages(pkgs = "./GraphPackage_0.1.0.tar.gz")
library(GraphPackage)
g <- graph(nodes, links)
plotgraph(g=g, col="black", pch=20, cex=4)
?plotgraph
