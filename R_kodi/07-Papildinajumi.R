# ggplot2 papildinājumi

library(ggplot2)

## ggthemes
library(ggthemes)
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() +
  theme_excel_new() +
  scale_color_excel_new()

library(ggthemes)
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() +
  theme_solarized() +
  scale_color_solarized()
