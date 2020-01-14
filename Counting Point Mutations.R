# Given: Two DNA strings s and t of equal length (not exceeding 1 kbp).
# Return: The Hamming distance dH(s,t) (the number of corresponding symbols that differ in s and t).

hamming <- read.table("rosalind_hamm.txt")
s <- strsplit(as.vector(hamming[1,]), split = "")
s_string <- s[[1]]
t <- strsplit(as.vector(hamming[2,]), split = "")
t_string <- t[[1]]

count = 0
for (i in 1:length(s_string)){
  if (s_string[i] != t_string[i]){
    count = count + 1
  }
}
print(count)
