ls()
rm(list=ls())
gc()

# MC with a standard normal distribution
sum=0
y=3

#dnorm(x, mean = 0, sd = 1, log = FALSE)

1-pnorm(3,mean=0, sd=1, log=FALSE)


set.seed(666)
for ( n in c(5000, 10000,15000,20000)){
  x1 = rnorm(n)         
  print(sum(x1>=3)/n)
}

