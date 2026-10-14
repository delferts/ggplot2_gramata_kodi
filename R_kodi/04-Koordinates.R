# Koordinātu sistēmas

library(ggplot2)

## coord_cartesian()
ggplot(CO2, aes(conc, uptake)) + geom_point() + 
      geom_smooth(method = "lm") +
      coord_cartesian(xlim = c(250, 750), ylim = c(0,50))

ggplot(CO2, aes(conc, uptake)) + geom_point() + 
      geom_smooth(method = "lm") +
      coord_cartesian(xlim = c(250, 750), ylim = c(0,50), expand = FALSE)

## coord_fixed()
ggplot(mpg,aes(cty,hwy)) + geom_point() +
      coord_fixed()

ggplot(mpg, aes(cty, hwy)) + geom_point() +
      coord_fixed(ratio = 0.5)

## coord_flip()
ggplot(CO2, aes(Type, uptake)) + geom_boxplot() + 
      coord_flip()
