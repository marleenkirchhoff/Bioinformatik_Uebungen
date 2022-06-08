
Sequenz <- ("ACGTTGCATGTCGCATGATGCATGAGAGCT")

# PatternCount
PatternCount <- function(Sequenz, Pattern){
  count <- 0
  for (i in (0: nchar(Sequenz) - nchar(Pattern))) 
    if (substr(Sequenz, i, (i+nchar(Pattern)-1)) == Pattern)
      count <- count + 1
  return (count)
}


# FrequentWords
FrequentWords <- function(Sequenz, k){
FrequentPatterns <- vector(mode = "list")
COUNT <- vector(mode = "list")
for (i in (0: nchar(Sequenz)-k)) {
   Pattern <- substr(Sequenz,i, (i + k-1))
   COUNT[i]<- PatternCount(Sequenz, Pattern)
 }
COUNTER <- unlist(COUNT)
maxcount <- max(COUNTER)

for (i in (0: (nchar(Sequenz)-k))) {
    if (COUNTER[i] == maxcount)
     append (FrequentPatterns, Pattern)

}}

FrequentPatterns1 <- unique(FrequentPatterns, incomparables = FALSE)
return(FrequentPatterns1)

FrequentPatterns

FrequentWords(Sequenz, 1)

FrequentWords(Sequenz, 2)

FrequentWords(Sequenz, 3)

FrequentWords(Sequenz, 4)

FrequentWords(Sequenz, 5)












  

  















   