library(dslabs)
data(movielens)

#quadratic formula
a <- 2
b <- (-1)
c <-  (-4)
sol <- -b+(sqrt(1-4*a*c))
print(sol)

#log calc
log(1024, base=4)

#rows
str(movielens)

nlevels(movielens$genre)
