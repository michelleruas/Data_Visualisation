options(digits = 3)    # report 3 significant digits
library(tidyverse)
library(titanic)


titanic <- titanic_train %>%
  select(Survived, Pclass, Sex, Age, SibSp, Parch, Fare) %>%
  mutate(Survived = factor(Survived),
         Pclass = factor(Pclass),
         Sex = factor(Sex))
str(titanic)
#Age by gender
titanic %>% 
  ggplot(aes(Age, color = Sex)) +
  geom_density()

params <- titanic %>%
  filter(!is.na(Age)) %>%
  summarize(mean = mean(Age), sd = sd(Age))

#Survival rate by gender
titanic %>% ggplot(aes(Survived, color = Sex))

#Survival rate by age
titanic %>% ggplot(aes(Age, color = Survived)) + geom_density(alpha = 0.2)

#Survival by fare type
titanic %>%
  filter(!Fare == 0) %>%
  ggplot(aes(Fare, color= Survived)) +
  geom_boxplot()





