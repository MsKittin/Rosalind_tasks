# Given: At most 10 DNA strings in FASTA format (of length at most 1 kbp each).
# Return: The ID of the string having the highest GC-content, followed by the GC-content of that string.

library(seqinr)
rosalind_gc <- read.fasta("rosalind_gc.txt")

gc = 0
max_gc = 0
k = 1
id_of_max <- c()
max_length <- c()

while (k <= length(rosalind_gc)){
  for (i in rosalind_gc[[k]]) {
    if (i == "g" | i == "c"){
      gc = gc + 1
    }
  }
  if (gc > max_gc){
    max_gc = gc
    id_of_max <- c(getName(rosalind_gc[[k]]))
    max_length <- c(getLength(rosalind_gc[[k]]))
  }
  k = k + 1
  gc = 0
}

gc_cont = max_gc / as.numeric(max_length) * 100
cat(id_of_max, gc_cont, sep = '\n')
