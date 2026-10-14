# Attēla noformēšana

library(ggplot2)

## Definētās attēla tēmas
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point()

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme_bw()

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme_classic()

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme_dark()

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme_grey()

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme_light()

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme_linedraw()

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme_minimal()

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme_void()

## Atsevišķu attēla elementu mainīšana

### Attēla virsraksts
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      labs(title = "CO2 attēls")+
      theme(plot.title = element_text(colour = "darkgreen",
                                      size = 20,
                                      face = "italic"))

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      labs(title = "CO2 attēls")+
      theme(plot.title = element_text(hjust = 0.5))

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      labs(title = "CO2 attēls", subtitle = "Koncentrācijas ietekme")+
      theme(plot.subtitle = element_text(face = "bold",
                                         colour = "blue"))

### Asu paraksti
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(axis.title = element_text(size = 15,
                                      face = "bold"))

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(axis.title.x = element_blank(),
            axis.title.y = element_text(colour = "red"))

### Asu apzīmējumi
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(axis.text.x = element_text(angle = 45, hjust = 1),
            axis.text.y = element_text(angle = 90, hjust = 0.5))

### Asu līnijas
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(axis.line = element_line(linetype = "longdash"))

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(axis.line = element_line(arrow = arrow(length = unit(2, 'mm'))))

### Leģendas novietojums
ggplot(CO2, aes(conc,uptake, color = Type)) + geom_point() + 
      theme(legend.position = "bottom")

ggplot(CO2,aes(conc, uptake, color = Type)) + geom_point() + 
      theme(legend.position = c(0.1,0.8))

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(legend.position = "bottom",
            legend.direction = "vertical")

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(legend.box.spacing = unit(1, "cm"))

### Leģendas virsraksts
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(legend.title = element_text(size = 15,
                                        color = "darkgreen",
                                        face = "bold.italic",
                                        hjust = 1))

### Leģendas pamatne
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(legend.background = element_rect(fill = "grey73",
                                                 colour = "black"))

ggplot(CO2, aes(conc, uptake, color = Type, shape = Treatment)) + geom_point() + 
      theme(legend.box.background = element_rect(fill = "grey73",
                                                 colour = "black"),
            legend.background = element_rect(fill = "grey90"))

### Leģendas teksti
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(legend.text = element_text(size = 7,
                                       angle = 5,
                                       hjust = 0.8))

### Leģendas ieraksti
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(legend.key = element_rect(fill = "lightblue",
                                      color = "blue"))

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(legend.key.height = unit(0.5, "cm"),
            legend.key.width = unit(1, "cm"))

### Attēla iekšējās daļas pamatne
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(panel.background = element_blank())

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(panel.background = element_rect(fill = NA, color = "black"))

### Palīglīnijas (gridlines)
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(panel.grid = element_blank())

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(panel.grid.major.x = element_line(colour = "lightblue"),
            panel.grid.major.y = element_line(linetype = "dashed",
                                              linewidth = 2))

### Attēla daļu virsraksti
ggplot(CO2, aes(conc, uptake)) + geom_point() + 
      facet_grid(Treatment ~ Type) +
      theme(strip.background = element_rect(colour = "black", fill = NA),
            strip.text.x = element_text(face = "italic"),
            strip.text.y = element_text(face = "bold"))

### Visa attēla pamatne
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(plot.background = element_rect(fill = "lightgreen"))

ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() + 
      theme(plot.margin = unit(c(2, 2, 3, 3), "cm"))

## Noformējuma saglabāšana kā objektu
ggplot(CO2, aes(conc, uptake, color = Type)) + geom_point() +
  theme(axis.text = element_text(size = 12, color = "darkgreen"),
        axis.title = element_text(size = 15, color = "darkblue", face = "italic"),
        panel.background = element_rect(fill = NA),
        axis.line = element_line(color = "black"),
        legend.position = "top")

tema <- theme(axis.text = element_text(size = 12, color = "darkgreen"),
              axis.title = element_text(size = 15, color = "darkblue", face = "italic"),
              panel.background = element_rect(fill = NA),
              axis.line = element_line(color = "black"),
              legend.position = "top")
ggplot(CO2, aes(uptake, fill = Treatment)) + geom_histogram(binwidth = 5) +
  tema
