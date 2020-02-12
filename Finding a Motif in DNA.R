# Given: Two DNA strings s and t (each of length at most 1 kbp).
# Return: All locations of t as a substring of s.

library(stringr)
dna_string <- read.table("rosalind_subs.txt")
print(as.integer(gregexpr(paste("(?=",dna_string[2,1],")", sep=""), dna_string[1,1], perl = TRUE)[[1]]))
