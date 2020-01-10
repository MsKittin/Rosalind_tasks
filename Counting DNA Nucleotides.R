#open the file
rosalind_dna <- read.table("rosalind_dna.txt")
#translate DNA string into a vector
dna <- as.vector((unlist(rosalind_dna)), "any")
#split our vector to make a list with list of single characters inside
dna_split <- strsplit(dna, split = "")
#refer to the inner list
dna_final <- dna_split[[1]]

#initialize variables as zero
a = 0
t = 0
c = 0
g = 0

for (i in 1:length(dna_final)) {
  #count A nucleotides
  if (dna_final[i] == "A"){
    a = a + 1
    #count T nucleotides
  } else if (dna_final[i] == "T"){
    t = t + 1
    #count C nucleotides
  } else if (dna_final[i] == "C"){
    c = c + 1
    #count G nucleotides
  } else {
    g = g + 1
  }
}
#print the list in a format requested by Rosalind 
print(sprintf("%d %d %d %d", a, c, g, t))
