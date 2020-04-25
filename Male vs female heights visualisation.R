library(dslabs)
data(heights)
male <- heights$height[heights$sex=="Male"]
female <- heights$height[heights$sex=="Female"]
male_percentiles <- quantile(male, seq(0.1, 0.9, 0.2))
female_percentiles <- quantile(female, seq(0.1, 0.9, 0.2))
df <- data.frame(female = female_percentiles, male = male_percentiles)
boxplot(female, male)
