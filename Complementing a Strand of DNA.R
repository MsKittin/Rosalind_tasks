#load plyr library
library(plyr)
#open the file
rosalind_revc <- read.table("rosalind_revc.txt")
#translate our input string into a vector, split it and refer to the inner list of single characters
dna <- strsplit(as.vector(unlist(rosalind_revc), "any"), split = "") [[1]]
#reverse string
reversed_dna <- rev(dna)
#revalue each nucleotide with it's complement 
complement <- revalue(reversed_dna, c("A" = "T", "G" = "C", "C" = "G", "T" = "A"))
#print the result in a format requested by Rosalind
paste(complement, collapse = "")

