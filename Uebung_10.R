#install.packages("igraph")
#library(igraph)
el <- as.matrix(read.csv("C:/Users/Marleen Kirchhoff/Desktop/Uni/5. Semester/Bioinformatik/proteinInteractionNetworkHomoSapiensSmall.csv"))

graph <- graph_from_edgelist(el, directed = FALSE)
plot(graph,vertex.color= "lightsteelblue2", vertex.size=15, vertex.label.cex=0.6, vertex.label.color="black", edge.color="black", main ="Proteininteraktionen im Menschen")

deg <- degree(graph, mode="all")
deg
close <- closeness(graph, mode="all", weights=NA) 
close
betw <- betweenness(graph, directed=T, weights=NA)
betw
hs <- hub_score(graph, weights=NA)$vector
hs
plot(graph, vertex.size=hs*50, main="Hubs")

# Proteine in der Mitte vom Netzwerk(APP,LRP1) stellen wichtigste Knoten im Netzwerk dar: Bilden hubs, haben höchsten Grad; sind also Schlüsselproteine im Menschen

