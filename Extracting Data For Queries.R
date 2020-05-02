library(dslabs)
data(heights)


options(digits = 3) 

average_height <- mean(heights$height)
above_average <- filter(heights, height>average_height & sex == "Female")

females <- heights$sex %in% c("Female")
mean(females)

which.min(heights$height)

match(heights$height, 50)

heights$sex[1032]

max(heights$height)

range <- min(heights$height):max(heights$height)

heights$height
x <- 50:82

sum(!(x %in% heights$height))

heights2 <- mutate(heights, ht_cm = height*2.54)
heights2

mean(heights2$ht_cm)

females <- filter(heights2, sex == "Female")
mean(females$ht_cm)
