#install.packages("palmerpenguins")
#library(palmerpenguins)
#data(package = 'palmerpenguins')
#install.packages("ggfortify")
#install.packages("factoextra")

penguins_omit <- na.omit(penguins)
head(penguins_omit)
 # Frage 1: Spalte 1: Pinguinart; Spalte 2: auf welcher Insel wurde sie gefunden, Spalte 3: Schnabellänge, Spalte 4: Schnabeldicke, Spalte 5: Flossenlänge, Spalte 6: Gewicht, Spalte 7: Geschlecht, Spalte 8: Jahr der Daten
 # Zeilen zeigen die Daten für je eins der 344 untersuchten Tiere 
results <- prcomp(penguins_omit[,c(3:6)], center = TRUE, scale = TRUE)
summary (results)
head(results$x)


library(ggfortify)
biplot.results <- biplot(results)
biplot.results

penguins.plot <- autoplot(results,
                         data = penguins_omit,
                         colour = 'species')

penguins.plot

# k-means Clustering und optimaler Wert von k 

library(factoextra)
library(cluster)
penguins_short <- penguins_omit[,c(3:6)]
penguins_scale <- scale(penguins_short)


fviz_nbclust(penguins_scale, kmeans, method = "wss")
# Elbow-methode: Übergang der Kurve in linearen Abfall bei k= 5
# k = 5 ist also bestes k 
set.seed(123)
km <- kmeans(penguins_scale, centers = 5, nstart = 25)
km
fviz_cluster(km, data = penguins_scale)
final_data <- cbind(penguins_omit, cluster = km$cluster)
head(final_data)




