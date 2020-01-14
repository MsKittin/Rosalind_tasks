# The task is to transcribe DNA string having length at most 1000 nt to RNA string
# by replacing all occurrences of 'T' with 'U'. Code must return the transcribed RNA string.

rosalind_rna <- read.table("rosalind_rna.txt")
dna <- strsplit(as.vector(unlist(rosalind_rna), "any"), split = "")[[1]]
rna <- c()
for (i in 1:length(dna)) {
  if (dna[i] == "T") {
    rna <- c(rna, "U")
  } else {
    rna <- c(rna, dna[i])
  }
}
paste(rna, collapse = "")
