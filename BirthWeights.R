# Birth Weight Simulation 
averageAv <- 0.0
averageVar <- 0.0
means <- vector(mode = "numeric", length = 20)
variances <- vector(mode = "numeric", length = 20)
# 20 iterations generating 20 normally distributed sets
for(i in 1:20) {
  x <- rtruncnorm(100, a = 2.5, b = 5.0, mean = 3.5, sd = 0.5)
  averageAv = averageAv + mean(x)
  averageVar = averageVar + var(x)
  show(t.test(x[1:10], mu = 3.5))
  show(t.test(x, mu = 3.5))
  means[i] = mean(x)
  variances[i] = var(x)
}
averageAv = averageAv / 20.0
averageAv
averageAvVec = rep(averageAv,20)
averageVar = averageVar / 20.0
averageVar
averageVarVec = rep(averageVar,20)
# Vectors of the theoretical mean and variance
av <- c(3.5,3.5,3.5,3.5,3.5,3.5,3.5,3.5,3.5,3.5,
        3.5,3.5,3.5,3.5,3.5,3.5,3.5,3.5,3.5,3.5)
v <- c(0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,
       0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25,0.25)
# Plot of the means and variances
xplot = rep(1, 20)
plot(xplot, means,type = "p",
     main="Means from 20 Normal Distributions of Birth Weights",
     xlab = " ", ylab = "Mean") 
lines(xplot,av,type = "p",col = "red")
lines(xplot,averageAvVec,type = "p",col = "blue")
plot(xplot,variances,type = "p",
     main="Variances from 20 Normal Distributions of Birth Weights",
     xlab = " ", ylab = "Variance")
lines(xplot,v,type = "p",col = "red")
lines(xplot,averageVarVec,type = "p",col = "blue")