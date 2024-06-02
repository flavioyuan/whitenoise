require(tidyverse)
require(tibble)
require(ggplot2)

# Parameters
size_serie <- 1000
mean_wn <- 0
sd_wn <- 1
phi0 <- 1
phi1 <- runif(n=1, min=-0.99, max=0.99)
dates_vector <- seq.Date(from = as.Date("01-01-2000"), by = "day", length.out = size_serie)

# Generate white noise
a_t <- rnorm(n = size_serie, mean = mean_wn, sd = sd_wn)

# Plot the white noise
plot(a_t, type = "l", main = "White Noise", xlab = "Time", ylab = "Amplitude")

# Matrix
ar <- tibble(dates_vector, a_t)

# Plot
ggplot(ar, aes(x = dates_vector, y = a_t)) + 
    geom_line() +
    labs(title = "Time Serie", x = "Date", y = "a_t") +
    theme_minimal()