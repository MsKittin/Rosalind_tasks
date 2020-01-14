# Given: Three positive integers k, m, and n, representing a population containing k+m+n organisms:
# k individuals are homozygous dominant for a factor, m are heterozygous, and n are homozygous recessive.
# Return: The probability that two randomly selected mating organisms will produce an individual possessing
# a dominant allele (and thus displaying the dominant phenotype). Assume that any two organisms can mate.

mendel <- read.table("rosalind_iprb.txt")
k = mendel[1,1]
m = mendel[1,2]
n = mendel[1,3]
total = k + m + n

k_1 <- k / total
kk <- k_1 * ((k-1) / (total - 1))
km <- k_1 * (m / (total - 1))
kn <- k_1 * (n / (total - 1))

m_1 <- m / total
mk <- m_1 * (k / (total - 1))
mm <- m_1 * ((m - 1) / (total - 1)) * 0.75
mn <- m_1 * (n / (total - 1)) * 0.5

n_1 <- n / total
nk <- n_1 * (k / (total - 1))
nm <- n_1 * (m / (total - 1)) * 0.5
nn <- n_1 * ((n-1) / (total - 1)) * 0

prob <- kk + km + kn + mk + mm + mn + nk + nm + nn
print(prob)
