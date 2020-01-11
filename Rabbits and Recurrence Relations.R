fib <- read.table("rosalind_fib.txt")
rab <- function(n, k) {
  if ((n == 1) | (n == 2)) {
    return(1) 
  } else {
    return(rab(n - 2, k) * k + rab(n - 1, k))
  }
}
rab(fib[,1], fib[,2])