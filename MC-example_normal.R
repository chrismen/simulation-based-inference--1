ls()
rm(list=ls())
gc()

# define the function
g<- function(x,d) 
{
  x^d
}

# MC with a standard normal distribution
set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
x1 = rnorm(n)         
print(paste0("sample size = ", n, "  average = "
             , mean(g(x1,1)), "  sd = ", sd(g(x1,1))))
}


# define the function
g1<- function(x,d,a,b) 
{
  (b-a)*x^d/sqrt(2*pi) *exp(-x^2/2)
}


d=1
a=-5
b=5

set.seed(666)
for ( n in c(500, 1000,1500,2000)){
  x1 = runif(n,a,b)         
  print(paste0("sample size = ", n, "  average = "
               , mean(g1(x1,d,a,b)), "  sd = ", sd(g1(x1,d, a,b))))
}


set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
  x1 = runif(n,a,b)         
  print(paste0("sample size = ", n, "  average = "
               , mean(g1(x1,d,a,b)), "  sd = ", sd(g1(x1,d, a,b))))
}


