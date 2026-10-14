# Ievads

## Dati
data(CO2)
head(CO2)

library(ggplot2)
data(mpg)
head(mpg)

## Attēlu saglabāšana
library(ggplot2)
data(CO2)
ggplot(CO2, aes(conc, uptake)) + geom_point()
ggsave("Attels_1.png", width = 10, height = 6, units = "cm")

attels_1 <- ggplot(CO2, aes(conc, uptake)) + geom_point()
ggsave("Attels_1.png", plot = attels_1, width = 10, height = 6, units = "cm")
