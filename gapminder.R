library(gapminder)
library(tidyverse)
gapminder
head(gapminder)
gapminder %>% filter(year==2007)
gapminder %>% arrange(desc(lifeExp))
filter(gapminder, year == 2007)
gapminder%>%
  filter(year == 2007)%>%
  arrange(lifeExp)
gapminder%>%
  mutate(pop = pop / 1000000)
gapminder%>%mutate(gdp = pop*gdpPercap)
library(ggplot2)
plot.ts(gapminder)
plot(gapminder)
gapminder%>%
  mutate(lifeExpMonths = 12*lifeExp)%>%
  filter(year == 1962, continent == 'Americas')%>%
  arrange(lifeExpMonths)
gapminder_2007 = gapminder %>% filter(year==2007)
gapminder_2007
ggplot(gapminder_2007) + geom_point(mapping = aes(x = gdpPercap, y = lifeExp))
ggplot(data = gapminder_2007) + 
  geom_point(mapping = aes(x = gdpPercap, y = lifeExp)) +
  scale_x_log10()
ggplot(data = gapminder_2007) +
  geom_point(mapping = aes(x = gdpPercap, y = lifeExp, color = continent,size = pop)) +
  scale_x_log10()
gapminder_1952 = gapminder%>%
  filter(year == 1952)
ggplot(gapminder_1952) +
  geom_point(aes(x = pop, y = lifeExp, color = continent)) +
  scale_x_log10()