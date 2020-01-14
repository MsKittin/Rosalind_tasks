# The task is to calculate the number of nucleotides 'A', 'C', 'G', and 'T' encountered in the DNA string
# of length at most 1000 nt. Code must return four integers (separated by spaces) counting the respective 
# number of times that the symbols 'A', 'C', 'G', and 'T' occur in the DNA string.

rosalind_dna <- read.table("rosalind_dna.txt")
dna <- as.vector((unlist(rosalind_dna)), "any")
dna_split <- strsplit(dna, split = "")
dna_final <- dna_split[[1]]

a = 0
t = 0
c = 0
g = 0

for (i in 1:length(dna_final)) {
  if (dna_final[i] == "A"){
    a = a + 1
  } else if (dna_final[i] == "T"){
    t = t + 1
  } else if (dna_final[i] == "C"){
    c = c + 1
  } else {
    g = g + 1
  }
}

print(sprintf("%d %d %d %d", a, c, g, t))
