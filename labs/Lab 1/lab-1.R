# Yasmine Hejazi
# Info371 Lab 1

#1 Variance of normal RV-s
n <- 1000
sample <- rnorm(n)
sample_mean <- mean(sample)

# Finding variance
sample_variance <- mean((sample - sample.mean)^2)
shortcut_variance <- mean((sample^2)) - mean(sample)^2
# We got the same results!

var_variance <- var(sample)

# Finding standard deviation
sample_sd <- sd(sample)

lower <- sample_mean - 1.96 * sample_sd
upper <- sample_mean + 1.96 * sample_sd
conf_interval <- ((length(sample[sample > upper]) + length(sample[sample < lower])) / n) * 100
# About 5%

hist(sample, col = "pink")
abline(v = sample_mean, col = "blue")
abline(v = lower, col = "red")
abline(v = upper, col = "red")

# Here we see a binomial distrubition of the sample numbers, with a minimal amount (5%) of the data falling
# outside of the 95% confidence interval. The mean of the distribution is nearly zero.



#2 Variance of means

n <- 3
m <- 1000

# Find means of m samples of n
means <- sapply(replicate(m, sapply(n, rnorm, simplify = FALSE)), mean)

# Variance of means
variance <- var(means)


# What happens if we make sample size larger?
new_n <- n * 100

new_means <- sapply(replicate(m, sapply(new_n, rnorm, simplify = FALSE)), mean)
new_variance <- var(new_means)
# The variance is much smaller!


# How much smaller will standard deviation be if the sample is 10x larger?
first_sd <- sd(means)

second_n <- n * 10
second_means <- sapply(replicate(m, sapply(second_n, rnorm, simplify = FALSE)), mean)
second_sd <- sd(second_means)

difference <- first_sd / second_sd
difference
# The new standard deviation will be around 3x smaller than the first standard deviation
