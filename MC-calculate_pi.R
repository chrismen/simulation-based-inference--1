ls()
rm(list=ls())
gc()


a=-1
b=1

set.seed(666)
for ( n in c(500, 1000,1500,2000, 20000)){
  x = runif(n,a,b) 
  y = runif(n,a,b)   
#
  print(sum(x^2+y^2<=1) /n*4)
  print(sd(x^2+y^2<=1) /n*4)
}

