# sequence alignment, prozentuale Uebereinstimmung

setwd ("C:/Users/Marleen Kirchhoff/Desktop/Uni/5. Semester/Bioinformatik")
library(readr)
read_file("alignedSequencesCalmodulin.txt")
seq1 <- data [1, ]
seq2 <- data [2, ]

count = 0

for (i in (1 : nchar(seq1)))
  {if (substr(seq1, i, i) == substr(seq2, i, i)) 
    {count = count + 1}
  }
 

count/ nchar(seq1)*100
count 





 























              
              




