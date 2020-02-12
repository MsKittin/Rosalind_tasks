library(Biostrings)
rna_seq <- read.table("rosalind_prot.txt")
rna <- RNAString(as.vector(unlist(rna_seq), "any"))
aminoacid <- Biostrings::translate(rna)
print(toString(aminoacid))

