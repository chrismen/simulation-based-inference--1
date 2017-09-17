ls()
rm(list=ls())
gc()

# MC with a standard normal distribution
sum=0
y=3

#dnorm(x, mean = 0, sd = 1, log = FALSE)

1-pnorm(3,mean=0, sd=1, log=FALSE)  # true values


set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
  x1 = rnorm(n)   
  ss= mean((x1>=3))
  print(paste0("sample size = ", n, "  average = "
               ,ss, "  sd = "
               ,ss*(1-ss)/n/ss )) # relative error
print(sum(x1>=3)/n)
}


g1<- function(x,mu) 
{
  dnorm(x,0,1)/dnorm(x,mu,1)
}

mu=3
set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
  x1 = rnorm(n,mu,1)     
  ss= mean(g1(x1,mu)*(x1>=3))
  print(paste0("sample size = ", n, "  average = "
               ,ss, "  sd = "
               ,ss*(1-ss)/n/ss ))
}


mu=4
set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
  x1 = rnorm(n,mu,1)     
  ss= mean(g1(x1,mu)*(x1>=3))
  print(paste0("sample size = ", n, "  average = "
               ,ss, "  sd = "
               ,ss*(1-ss)/n/ss ))
}


