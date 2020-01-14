# Given: Positive integers n≤40 and k≤5.
# Return: The total number of rabbit pairs that will be present after n months, if we begin with 1 pair
# and in each generation, every pair of reproduction-age rabbits produces a litter of k rabbit pairs (instead of only 1 pair).

fib <- read.table("rosalind_fib.txt")
rab <- function(n, k) {
  if ((n == 1) | (n == 2)) {
    return(1) 
  } else {
    return(rab(n - 2, k) * k + rab(n - 1, k))
  }
}
rab(fib[,1], fib[,2])
