# ggplot2 papildinājumi

library(ggplot2)

## cowplot
library(cowplot)
library(ggplot2)
p1 <- ggplot(CO2, aes(conc, uptake, color = Type)) +
  geom_point() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
p2 <- ggplot(CO2, aes(uptake)) +
  geom_histogram()
plot_grid(p1, p2, ncol = 2)

plot_grid(p1, p2, ncol = 2, align = "h")

plot_grid(p1, p2, ncol = 2, align = "h", labels = c("A", "B"))

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() +
  theme_cowplot()

## ggthemes
library(ggthemes)
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() +
  theme_excel_new() +
  scale_color_excel_new()

library(ggthemes)
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() +
  theme_solarized() +
  scale_color_solarized()
