library(HistData)
data(Galton)
x <- Galton$child
mean(x)
median(x)

x <- Galton$child
sd(x)
mad(x, median(x))

#Report how many inches the average grows after this mistake. Specifically, report the difference between the average of the data with the mistake x_with_error and the data without the mistake x

library(HistData)
data(Galton)
x <- Galton$child
x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

mean(x_with_error)-mean(x)

#Report how many inches the SD grows after this mistake. Specifically, report the difference between the SD of the data with the mistake x_with_error and the data without the mistake x

x_with_error <- x
x_with_error[1] <- x_with_error[1]*10

sd(x_with_error)-sd(x)

#Write a function called error_avg that takes a value k and returns the average of the vector x after the first entry changed to k. Show the results for k=10000 and k=-10000

x <- Galton$child
error_avg <- function(k){
  x[1] <- k
  mean(x)
}
error_avg(10000)
error_avg(-10000)


