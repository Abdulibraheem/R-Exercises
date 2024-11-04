library(tidyverse)
data()
?BOD

ggplot(BOD, aes(Time, demand))+
  geom_point(size = 3)+
  geom_line(colour = "red")

data()

view(CO2)

CO2 %>%
  ggplot(aes(conc, uptake, 
             colour = Treatment))+
  geom_point(size = 3, alpha = 0.5)+
  geom_smooth(method = lm, se = F)+
  facet_wrap(~Type)
   