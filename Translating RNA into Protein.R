#Given: An RNA string s corresponding to a strand of mRNA (of length at most 10 kbp).
#Return: The protein string encoded by s.

library(Biostrings)
rna_seq <- read.table("rosalind_prot.txt")
rna <- RNAString(as.vector(unlist(rna_seq), "any"))
aminoacid <- Biostrings::translate(rna)
print(toString(aminoacid))
