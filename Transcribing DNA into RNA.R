#open the file
rosalind_rna <- read.table("rosalind_rna.txt")
#translate our input DNA string into a vector, split it and refer to the inner list of single characters
dna <- strsplit(as.vector(unlist(rosalind_rna), "any"), split = "")[[1]]
#create empty vector for transcribed RNA 
rna <- c()
for (i in 1:length(dna)) {
  #replace "T" nucleotide with "U" and add it to rna vector
  if (dna[i] == "T") {
    rna <- c(rna, "U")
  } else {
    #if nucleotide is not "T" just add it to rna vector
    rna <- c(rna, dna[i])
  }
}
#print the result in a format requested by Rosalind
paste(rna, collapse = "")

