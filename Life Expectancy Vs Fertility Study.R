library(dplyr)
library(ggplot2)
library(dslabs)
data(gapminder)

## fill out the missing parts in filter and aes
gapminder %>% filter(year == 2012 & continent == "Africa") %>% ggplot(aes(fertility, life_expectancy )) +
  geom_point()

## adding colour per region
gapminder %>% 
  filter(year == 2012 & continent == "Africa") %>%
  ggplot(aes(fertility, life_expectancy, color = region)) +
  geom_point()

#Create a table showing the country and region for the African countries (use select) that in 2012 had fertility rates of 3 or less and life expectancies of at least 70
df <- gapminder %>% 
  filter(year == 2012 & fertility <= 3 & life_expectancy >= 70 & continent == "Africa") %>% 
  select(country, region) %>%
  distinct()

#Use filter to create a table with data for the years from 1960 to 2010 in Vietnam and the United States
tab <- gapminder %>% 
  filter(year %in% c(1960:2010) & country %in% c("Vietnam", "United States"))

# code for your plot goes here - the data table is stored as `tab`

p <- tab %>% 
  ggplot(aes(year, life_expectancy, color = country)) +
  geom_line()
p

#Use a single line of code to create a time series plot from 1960 to 2010 of life expectancy vs year for Cambodia
gapminder %>% 
  filter(year %in% c(1960:2010) & country == "Cambodia") %>%
  ggplot(aes(year, life_expectancy)) + 
  geom_line()

#Now we are going to calculate and plot dollars per day for African countries in 2010 using GDP data
daydollars <- gapminder %>%
  mutate(dollars_per_day = gdp/population/365)%>%
  filter(continent == "Africa" & year == 2010 & !is.na(dollars_per_day))

#Create a smooth density plot of dollars per day from daydollars.
#Use scale_x_continuous to change the x-axis to a log (base 2) scale.
daydollars %>% 
  ggplot(aes(dollars_per_day))+
  geom_density()+
  scale_x_continuous(trans = "log2")


#Use facet_grid to show a different density plot for 1970 and 2010.
gapminder %>%
  mutate(dollars_per_day = gdp/population/365)%>%
  filter(continent == "Africa" & year %in% c(1970, 2010) & !is.na(dollars_per_day)) %>% 
  ggplot(aes(dollars_per_day))+ 
  geom_density()+ 
  scale_x_continuous(trans = "log2")+ 
  facet_grid(year ~ .)





