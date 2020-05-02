# define x as vector of male heights
library(tidyverse)
library(dslabs)
data(heights)
index <- heights$sex=="Male"
x <- heights$height[index]

# calculate the mean and standard deviation manually
average <- sum(x)/length(x)
SD <- sqrt(sum((x - average)^2)/length(x))

# built-in mean and sd functions - note that the audio and printed values disagree
average <- mean(x)
SD <- sd(x)
c(average = average, SD = SD)

# calculate standard units
z <- scale(x)

# calculate proportion of values within 2 SD of mean
mean(abs(z) < 2)


# plot distribution of exact heights in data
plot(prop.table(table(x)), xlab = "a = Height in inches", ylab = "Pr(x = a)")

# probabilities in actual data over length 1 ranges containing an integer
mean(x <= 68.5) - mean(x <= 67.5)
mean(x <= 69.5) - mean(x <= 68.5)
mean(x <= 70.5) - mean(x <= 69.5)

# probabilities in normal approximation match well
pnorm(68.5, mean(x), sd(x)) - pnorm(67.5, mean(x), sd(x))
pnorm(69.5, mean(x), sd(x)) - pnorm(68.5, mean(x), sd(x))
pnorm(70.5, mean(x), sd(x)) - pnorm(69.5, mean(x), sd(x))

# probabilities in actual data over other ranges don't match normal approx as well
mean(x <= 70.9) - mean(x <= 70.1)
pnorm(70.9, mean(x), sd(x)) - pnorm(70.1, mean(x), sd(x))


x <- heights$height[heights$sex=="Male"]
avg <- mean(x)
stdev <- sd(x)
#Use the normal approximation to estimate the proportion the proportion of the data that is between 69 and 72 inches
pnorm(72, mean = avg, sd = stdev)-pnorm(69, mean = avg, sd = stdev)


library(dslabs)
data(heights)
x <- heights$height[heights$sex == "Male"]
exact <- mean(x > 79 & x <= 81)
#Use the normal approximation to estimate the proportion the proportion of the data that is between 69 and 72 inches

avg <- mean(x)
stdev <- sd(x)
approx <- pnorm(81, mean = avg, sd = stdev)-pnorm(79, mean = avg, sd = stdev)


# use pnorm to calculate the proportion over 7 feet (7*12 inches)
1-(pnorm(7*12, mean = 69, sd = 3))

#estimate the proportion of men that are seven feet tall or taller in the world and store that value as p
p <- 1-(pnorm(7*12, mean = 69, sd = 3))
round(p*10^9)

#calculate the proportion of the world's 18 to 40 year old seven footers that are in the NBA
p <- 1-(pnorm(7*12, mean = 69, sd = 3))
N <- round(p*10^9)
10/N

## Change the solution to previous answer
p <- 1 - pnorm(6*12+8, 69, 3)
N <- round(p * 10^9)
150/N

# define x and z
library(tidyverse)
library(dslabs)
data(heights)
index <- heights$sex=="Male"
x <- heights$height[index]
z <- scale(x)

# proportion of data below 69.5
mean(x <= 69.5)

# calculate observed and theoretical quantiles
p <- seq(0.05, 0.95, 0.05)
observed_quantiles <- quantile(x, p)
theoretical_quantiles <- qnorm(p, mean = mean(x), sd = sd(x))

# make QQ-plot
plot(theoretical_quantiles, observed_quantiles)
abline(0,1)

# make QQ-plot with scaled values
observed_quantiles <- quantile(z, p)
theoretical_quantiles <- qnorm(p)
plot(theoretical_quantiles, observed_quantiles)
abline(0,1)



exact/approx