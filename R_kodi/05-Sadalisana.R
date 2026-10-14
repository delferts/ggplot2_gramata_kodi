# Attēlu sadalīšana

library(ggplot2)

## facet_grid()
ggplot(CO2, aes(conc, uptake)) + geom_point() + 
      facet_grid(. ~ Type)

ggplot(CO2, aes(conc, uptake)) + geom_point() + 
      facet_grid(Treatment ~ .)

ggplot(CO2,aes(conc,uptake)) + geom_point() + 
      facet_grid(Treatment ~ Type)

ggplot(CO2,aes(conc, uptake)) + geom_point() + 
      facet_grid(Treatment ~ Type,margins = TRUE)

## facet_wrap()
ggplot(mpg, aes(cty, hwy)) + geom_point() + 
      facet_wrap(~ class, ncol = 4)

ggplot(mpg, aes(cty, hwy)) + geom_point() + 
      facet_wrap(~cyl + drv, ncol = 4)

ggplot(mpg,aes(cty,hwy)) + geom_point() + 
      facet_wrap(~cut_number(displ, 6))
