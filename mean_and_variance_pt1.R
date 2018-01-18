#####################
#      Part 1.2     #
# Second Simulation #
#####################

# Average and Variance of 10 normally
# distrubted sets of 20 numbers 
print("n = 20");

averageAv <- 0.0
averageVar <- 0.0

means <- vector(mode = "numeric", length = 10)
variances <- vector(mode = "numeric", length = 10)

for(i in 1:10) {
  x <- rnorm(20, mean = 0, sd = 1)
  
  averageAv = averageAv + mean(x)
  averageVar = averageVar + var(x)
  means[i] = mean(x)
  variances[i] = var(x)
}
averageAv = averageAv / 10.0
averageAv
averageAvVec = rep(averageAv,10)

averageVar = averageVar / 10.0
averageVar
averageVarVec = rep(averageVar,10)

av <- c(0,0,0,0,0,0,0,0,0,0)
v <- c(1,1,1,1,1,1,1,1,1,1)

xplot = rep(1, 10)
plot(xplot,means,type = "p",
     main="Means from 10 Normal Distributions, sd = 1, n = 20",
     xlab = " ", ylab = "Mean")
lines(xplot,av,type = "p",col = "red")
lines(xplot,averageAvVec,type = "p",col = "blue")
plot(xplot,variances,type = "p",
     main="Variances from 10 Normal Distributions, sd = 1, n = 20",
     xlab = " ", ylab = "Variance")
lines(xplot, v,type = "p",col = "red")
lines(xplot,averageVarVec,type = "p",col = "blue")

# Average and Variance of 10 normally 
# distrubted sets of 20 numbers (sd = 10)
print("n = 20");

averageAv <- 0.0
averageVar <- 0.0

for(i in 1:10) {
  x <- rnorm(20, mean = 0, sd = 10)
  
  averageAv = averageAv + mean(x)
  averageVar = averageVar + var(x)
  
  means[i] = mean(x)
  variances[i] = var(x)
}
averageAv = averageAv / 10.0
averageAv
averageAvVec = rep(averageAv,10)
averageVar = averageVar / 10.0
averageVar
averageVarVec = rep(averageVar,10)
v2 <- c(100,100,100,100,100,100,100,100,100,100)
plot(xplot,means,type = "p",
     main="Means from 10 Normal Distributions, sd = 10, n = 20",
     xlab = " ", ylab = "Mean")
lines(xplot,av,type = "p",col = "red")
lines(xplot,averageAvVec,type = "p",col = "blue")
plot(xplot,variances,type = "p",
     main="Variances from 10 Normal Distributions, sd = 10, n = 20",
     xlab = " ", ylab = "Variance")
lines(xplot,v2,type = "p",col = "red")
lines(xplot,averageVarVec,type = "p",col = "blue")
