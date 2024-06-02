# Generate white noise
a <- rnorm(n = 1000, mean = 0, sd = 1)

# Plot the white noise
plot(a, type = "l", main = "White Noise", xlab = "Time", ylab = "Amplitude")

# Defining parameters

phi0 <- 1
phi1 <- runif(n=1, min=-0.99, max=0.99)
