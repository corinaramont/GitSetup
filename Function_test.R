# This is to practice some basic function writing in R. 


# Generate n-dimensional response Y that follows linear regression model Y = Xbeta + epsilon,
# where epsilon is normal zero with variance sigma^2 independent across samples.
# Seed should be set at the beginning of the function
#
# Input:
# X - design matrix, n by p
# beta - given parameter vector, length p
# sigma - standard deviation of the noise
# seed  - starting seed value
generateY <- function(X, beta, sigma, seed = 5832652){
  #[ToDo] Set seed and generate Y following linear model
  set.seed(seed)
  epsilon = rnorm(1,mean=0,sd=sigma)
  Y = (X%*%beta) + epsilon
  # Return Y
  return(Y)
}

