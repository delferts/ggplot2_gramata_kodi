# Skalas

pdf.options(encoding = "CP1257.enc")
library(ggplot2)

## scale_x_continuous() un scale_y_continuous()
ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      scale_x_continuous("Koncentrācija", breaks = c(200, 400, 500)) +
      scale_y_continuous("Uzņemtais apjoms")

ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      scale_x_continuous(limits = c(200, 600)) +
      scale_y_continuous(limits = c(0, 50))

ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      scale_y_continuous(position = "right") +
      scale_x_continuous(position = "top")

ggplot(CO2, aes(conc, uptake)) +
      geom_point() +
      scale_y_continuous(sec.axis = sec_axis(~ . / 100, name = "Otrā y ass"))

## scale_x_discrete() un scale_y_discrete()
ggplot(mpg, aes(drv, hwy)) +
      geom_boxplot() +
      scale_x_discrete(limits = c("f", "r"))

ggplot(mpg, aes(drv, hwy)) +
      geom_boxplot() +
      scale_x_discrete(limits = c("r", "4", "f"))

ggplot(mpg, aes(drv, hwy)) +
      geom_boxplot() +
      scale_x_discrete(
            labels = c("4" = "Četri", "r" = "Pakaļējie", "f" = "Priekšējie")
      )

## scale_color_...() un scale_fill...()
ggplot(mpg, aes(cty, hwy, color = drv)) +
      geom_point() +
      scale_color_discrete(
            name = "Piedziņas veids",
            labels = c("Visi", "Priekšējie", "Pakaļējie")
      )

ggplot(mpg, aes(cty, hwy, color = drv)) +
      geom_point() +
      scale_color_hue(h = c(60, 190))

ggplot(mpg, aes(cty, hwy, color = drv)) +
      geom_point() +
      scale_color_brewer(palette = "Set2")

ggplot(mpg, aes(drv, fill = drv)) +
      geom_bar() +
      scale_fill_manual(values = c("orange", "black", "deepskyblue"))

ggplot(mpg, aes(drv, fill = drv)) +
      geom_bar() +
      scale_fill_manual(
            values = c("f" = "orange", "4" = "black", "r" = "deepskyblue"),
            labels = c("f" = "Priekšējie", "4" = "Visi", "r" = "Pakaļējie")
      )

ggplot(CO2, aes(conc, uptake, color = uptake)) +
      geom_point() +
      scale_color_gradient(low = "white", high = "black")

ggplot(CO2, aes(conc, uptake, color = uptake)) +
      geom_point() +
      scale_color_gradient2(low = "red", high = "blue", midpoint = 30)

## scale_alpha_...()
ggplot(CO2, aes(conc, uptake, alpha = uptake)) +
      geom_point() +
      scale_alpha_continuous(
            "Caurspīdīgums",
            breaks = c(8, 16, 24, 32),
            range = c(0.3, 0.8)
      )

## scale_linetype_...()
ggplot(mpg, aes(cty, hwy, linetype = drv)) +
      geom_line() +
      scale_linetype_manual("Līnijas veids", values = c(3, 2, 6))

## scale_shape_...()
ggplot(CO2, aes(conc, uptake, shape = Type)) +
      geom_point() +
      scale_shape_discrete("Tips", labels = c("Pirmais", "Otrais"))

ggplot(CO2, aes(conc, uptake, shape = Type)) +
      geom_point() +
      scale_shape_manual(
            "Tips",
            labels = c("Pirmais", "Otrais"),
            values = c(11, 23)
      )

## scale_size_...()
ggplot(CO2, aes(conc, uptake, size = uptake)) +
      geom_point() +
      scale_size("Izmēri", range = c(2, 8))

ggplot(CO2, aes(conc, uptake, size = uptake)) + geom_point() + scale_size_area()

## Identitātes skalas
df <- data.frame(
      x = 1:3,
      y = 1:3,
      izmers = 4:6,
      krasa = c("green", "yellow", "brown")
)
df

ggplot(df, aes(x, y, color = krasa)) +
      geom_point()

ggplot(df, aes(x, y, color = krasa, size = izmers)) +
      geom_point() +
      scale_color_identity() +
      scale_size_identity()

## Transformāciju skalas
ggplot(CO2, aes(conc, uptake, size = uptake)) +
      geom_point() +
      scale_x_log10(breaks = c(10, 100, 1000), limits = c(10, 1000)) +
      scale_y_log10()

ggplot(CO2, aes(conc, uptake, size = uptake)) +
      geom_point() +
      scale_x_sqrt() +
      scale_y_sqrt()

ggplot(CO2, aes(conc, uptake, size = uptake)) +
      geom_point() +
      scale_x_reverse() +
      scale_y_reverse()
