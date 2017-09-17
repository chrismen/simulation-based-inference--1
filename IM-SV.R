

ls()
rm(list=ls())
gc()




g<- function(x) 
{
  exp(-0.5* exp(-x)) }

mu=3
sigma=1


set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
  x1 = rnorm(n,mu,sigma)     
  print(paste0("sample size = ", n, "  average = "
               ,  mean(g(x1)), "  sd = ", sd(g(x1))))
}
# MC with a standard normal distribution

g1<- function(x,mu1, mu2, sigma) 
{
  exp(-0.5* exp(-x)) * dnorm(x, mu1,sigma)/dnorm(x,mu2,sigma)
}

mu=3
sigma=1
a=mu+sigma^2 *exp(-mu)/2

set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
  x1 = rnorm(n,a,1)     
  print(paste0("sample size = ", n, "  average = "
               ,  mean(g1(x1,mu, a,sigma)), "  sd = ", sd(g1(x1,mu, a,sigma))))
}

