# Formas

## geom_point()
library(ggplot2)
ggplot(CO2, aes(conc, uptake)) + geom_point()

ggplot(CO2, aes(conc, uptake)) + geom_point(color = "green", size = 2)

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point()

ggplot(CO2, aes(conc, uptake, color = uptake)) + geom_point()

ggplot(CO2, aes(conc, uptake, shape = Type)) + geom_point()

ggplot(CO2, aes(conc, uptake, shape = Type, color = Treatment)) +
      geom_point()

## geom_bar()
ggplot(mpg, aes(drv)) + geom_bar()

ggplot(mpg, aes(drv)) + geom_bar(fill = "white", color = "red")

ggplot(mpg, aes(drv, fill = factor(cyl))) + geom_bar()

ggplot(mpg, aes(drv, fill = factor(cyl))) + geom_bar(position = "dodge")

## geom_col()
dati <- data.frame(Dzimums = c("S", "V"), Skaits = c(23, 45))
dati
ggplot(dati, aes(Dzimums, Skaits)) + geom_col()

## geom_line()
ggplot(mpg, aes(cty, hwy)) + geom_line()

ggplot(mpg, aes(cty, hwy)) +
      geom_line(color = "red", linewidth = 1.5, linetype = 2)

ggplot(mpg, aes(cty, hwy, color = drv)) + geom_line()

## geom_path()
ggplot(mpg, aes(cty, hwy)) + geom_path()

## geom_boxplot()
ggplot(CO2, aes(Type, uptake)) + geom_boxplot()

ggplot(CO2, aes(Type, uptake)) +
      geom_boxplot(color = "darkgreen", fill = "salmon")

ggplot(CO2, aes(Type, uptake)) +
      geom_boxplot(outlier.color = "red", outlier.shape = 13, outlier.size = 3)

ggplot(CO2, aes(Type, uptake, fill = Treatment)) +
      geom_boxplot()

## geom_count()
ggplot(mpg, aes(cty, hwy)) + geom_count()

ggplot(mpg, aes(cty, hwy)) + geom_count(aes(size = after_stat(prop)))

## geom_histogram()
ggplot(CO2, aes(uptake)) + geom_histogram()

ggplot(CO2, aes(uptake)) + geom_histogram(binwidth = 10)

ggplot(CO2, aes(uptake)) +
      geom_histogram(color = "darkgreen", fill = "white", binwidth = 10)

ggplot(CO2, aes(uptake, fill = Type)) +
      geom_histogram(binwidth = 5)

## geom_crossbar(), geom_errorbar(), geom_linerange() un geom_pointrange()
library(dplyr)
CO2_summary <- CO2 %>%
      group_by(Type) %>%
      summarise(
            mean_uptake = mean(uptake),
            sd_uptake = sd(uptake)
      )
CO2_summary

ggplot(
      CO2_summary,
      aes(
            x = Type,
            y = mean_uptake,
            ymin = mean_uptake - sd_uptake,
            ymax = mean_uptake + sd_uptake
      )
) +
      geom_crossbar()

ggplot(
      CO2_summary,
      aes(
            x = Type,
            y = mean_uptake,
            ymin = mean_uptake - sd_uptake,
            ymax = mean_uptake + sd_uptake
      )
) +
      geom_errorbar(width = 0.2) +
      geom_point(size = 3)

ggplot(
      CO2_summary,
      aes(
            x = Type,
            ymin = mean_uptake - sd_uptake,
            ymax = mean_uptake + sd_uptake
      )
) +
      geom_linerange()

ggplot(
      CO2_summary,
      aes(
            x = Type,
            y = mean_uptake,
            ymin = mean_uptake - sd_uptake,
            ymax = mean_uptake + sd_uptake
      )
) +
      geom_pointrange()

## geom_abline(), geom_hline() un geom_vline()
ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      geom_abline(intercept = 5, slope = 0.04)

ggplot(CO2, aes(conc, uptake)) + geom_point() + geom_hline(yintercept = 20)

ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      geom_hline(yintercept = c(20, 30, 40))

dati.papildus <- data.frame(limeni = c(10, 20, 30, 40))
ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      geom_hline(data = dati.papildus, aes(yintercept = limeni))

ggplot(CO2, aes(conc, uptake)) + geom_point() + geom_vline(xintercept = 500)

## geom_jitter()
ggplot(CO2, aes(Type, uptake)) + geom_jitter()

ggplot(CO2, aes(Type, uptake)) + geom_boxplot() + geom_jitter()

ggplot(CO2, aes(Type, uptake, fill = Treatment)) +
      geom_boxplot() +
      geom_jitter(position = position_jitterdodge())

set.seed(123)
ggplot(CO2, aes(Type, uptake, fill = Treatment)) +
      geom_boxplot() +
      geom_jitter(position = position_jitterdodge())

## geom_smooth()
ggplot(CO2, aes(conc, uptake)) + geom_point() + geom_smooth()

ggplot(CO2, aes(conc, uptake)) + geom_point() + geom_smooth(method = "lm")

ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      geom_smooth(method = "lm", se = FALSE)

ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      geom_smooth(method = "lm", aes(color = Type, fill = Type))

ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      geom_smooth(method = "lm", formula = y ~ x + I(x^2))

## geom_violin()
ggplot(CO2, aes(Type, uptake)) + geom_violin()

ggplot(CO2, aes(Type, uptake)) +
      geom_violin(quantile.linetype = 1)

ggplot(CO2, aes(Type, uptake)) +
      geom_violin(aes(fill = Treatment))
