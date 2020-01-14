# The task is to write reversed complementary nucleotide sequence of given a DNA string of length at most 1000 bp.
# Code must return the reversed complement of given DNA string.

library(plyr)
rosalind_revc <- read.table("rosalind_revc.txt")
dna <- strsplit(as.vector(unlist(rosalind_revc), "any"), split = "") [[1]]
reversed_dna <- rev(dna)
complement <- revalue(reversed_dna, c("A" = "T", "G" = "C", "C" = "G", "T" = "A"))
paste(complement, collapse = "")
