#install.packages("phangorn")
library(phangorn)
fdir <- system.file("extdata/trees", package = "phangorn")
primates <- read.phyDat(file.path(fdir, "primates.dna"),
                        format = "interleaved")


# UPGMA

dm <- dist.ml(primates)
treeUPGMA <- upgma(dm)
plot(treeUPGMA, main = "UPGMA")


# Neighbour-Joining 

treeNJ <- NJ(dm)
plot (treeNJ, "unrooted",  main = "Neighbour-Joining")


# Frage 1: Rind, Maus. Scheint in den Bäumen so, als bildet das Rind mit dem Lemur ein Cluster und als wäre die Maus gemeinsamer Vorfahre aller Primaten (bei UPGMA). 
# Frage 2: Tarsier  
# Frage 3: Schimpanse
# NJ lässt aufgrund der nahe beieinander liegenden Zweige Verwandtschaften vermuten, die in UPGMA nicht sichtbar sind. Die Zuordnungen sind davon abhängig, wie ein Cluster definiert wird: In UPGMA nur direkt verbundene Zweige, in NJ die am nächsten beieinander liegenden
