library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)
data(murders)
p <- ggplot(murders)
class(p)

data(heights)
# define ggplot object called p like in the previous exercise but using a pipe 
p <- heights %>% ggplot() 

str(murders)

## Fill in the blanks
murders %>% ggplot(aes(x = population, y = total)) +
  geom_point()

#flip the axis 
murders %>% ggplot(aes(total, population)) +
  geom_point()

