library(dslabs)
data(murders)

# a simple scatterplot of total murders versus population
x <- murders$population /10^6
y <- murders$total
plot(x, y)

# a histogram of murder rates
hist(murders$rate)


