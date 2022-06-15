Münze <- c("Kopf", "Zahl")

n <- 500
p <- 0.5
q <- 0.5
Würfe <- sample(Münze, size = n, replace = TRUE, prob = c(p, q))
Werte <- table(Würfe)
Werte

Wsk <- (Werte[1]+1)/(n+2)
Wsk


# Je mehr Wiederholungen, desto besser die Schätzung
# bei 500 Wiederholungen Schätzung mit 49,8 % sehr gut 
# unabhängig von p, da Änderung von p sich nicht auf die Schätzung auswirkt