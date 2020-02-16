library(seqinr)
fasta <- read.fasta("rosalind_cons.txt")
sink("consensus.log", type=c("output", "message"))

a = 0
c = 0
g = 0
t = 0
a_count <- c()
c_count <- c()
g_count <- c()
t_count <- c()
cons <- c()
acgt <- c("a", "c", "g", "t")

for (i in 1:getLength(fasta[1])) {
  for (j in 1:length(fasta)){
    if (fasta[[j]][i] == "a") {
      a = a+1
  } else if (fasta[[j]][i] == "c") {
    c = c+1
  } else if (fasta[[j]][i] == "g") {
    g = g+1
  } else {
  t = t+1 }
  }
  cons <- append(cons, acgt[which.max(c(a,c,g,t))])
  a_count <- append(a_count, a)
  c_count <- append(c_count, c)
  g_count <- append(g_count, g)
  t_count <- append(t_count, t)
  
  a = 0
  c = 0
  g = 0
  t = 0
}

cat(toupper(cons), sep = '', collapse = '')
cat("\nA:", a_count, collapse = ' ')
cat("\nC:", c_count, collapse = ' ')
cat("\nG:", g_count, collapse = ' ')
cat("\nT:", t_count, collapse = ' ')
