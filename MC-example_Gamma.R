ls()
rm(list=ls())
gc()

# define the function
g<- function(x,d) 
{
  x^d
}

# MC with a Gamma distribution
set.seed(666)

d=1
s1=1# shape
s2=2 # scale
for ( n in c(5000, 10000,15000,20000)){
x1 = rgamma(n,s1,s2)         
print(paste0("sample size = ", n, "  average = " , mean(g(x1,d)), "  sd = ", sd(g(x1,d))))
}



s1=1# shape
s2=2 # scale

# s^a /gamma(a) x^(a-1) e^-(sx)

# define the function
g1<- function(x,d,s1, s2, a,b) 
{
  x^d*(b-a)*s2^s1 /gamma(s1)* x^(s1-1) *exp(-s2*x)
}


d=1
s1=1# shape
s2=2 # scale

a=0
b=5
set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
  x1 = runif(n,a,b)         
  print(paste0("sample size = ", n, "  average = "
               , mean(g1(x1,d,s1, s2,a,b)), 
               "  sd = ", sd(g1(x1,d, s1,s2,a,b))))
}


set.seed(666)
for ( n in c(50000, 100000,150000,200000)){
  x1 = runif(n,a,b)         
  print(paste0("sample size = ", n, "  average = "
               , mean(g1(x1,d,s1, s2,a,b)), 
               "  sd = ", sd(g1(x1,d, s1,s2,a,b))))
}

