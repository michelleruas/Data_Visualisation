library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000
ind <- which.min(murder_rate)

if(murder_rate[ind] < 0.5){
  print(murders$state[ind]) 
} else{
  print("No state has murder rate that low")
}

# changing the condition to < 0.25 changes the result
if(murder_rate[ind] < 0.25){
  print(murders$state[ind]) 
} else{
  print("No state has a murder rate that low.")
}

# Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)

# Create function called `sum_n`
sum_n <- function(x){
  sum(1:x)
}

# Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)

altman_plot <- function(x,y){
  plot(x+y, y-x)
}

# Create `altman_plot` 
altman_plot(2,3)

# Here is an example of a function that adds numbers from 1 to n
example_func <- function(n){
  x <- 1:n
  sum(x)
}

# Here is the sum of the first 100 numbers
example_func(100)

# Write a function compute_s_n with argument n that for any given n computes the sum of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n){
  x <- 1:n
  squared <- x^2
  sum(squared)
}

# Report the value of the sum when n=10
compute_s_n(10)


# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n
n <- 25
for(i in 1:n){
  s_n[i] <- compute_s_n(i)
}

#  Create the plot 
plot(n, s_n)

# Check that s_n is identical to the formula given in the instructions.
identical(s_n, (n*(n+1)*(2*n+1))/6)


