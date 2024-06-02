# Generate white noise
white_noise <- rnorm(n = 1000, mean = 0, sd = 1)

# Plot the white noise
plot(white_noise, type = "l", main = "White Noise", xlab = "Time", ylab = "Amplitude")

# Defining parameters

phi0 <- 1
phi1 <- runif(n=1, min=-1, max=1)
