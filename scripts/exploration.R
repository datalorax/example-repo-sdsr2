library(tidyverse)

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = drv),
             stroke = 0, 
             size = 2) +
  geom_smooth() +
  scale_color_brewer("Drivetrain", palette = "Dark2") +
  theme_minimal(base_size = 15) +
  labs(title = "The definitive ggplot2 plot",
       x = "Engine Displacement",
       y = "Highway Miles Per Gallon") +
  theme(plot.title.position = "plot",
        legend.position = "bottom")

ggsave(here::here("plots", "ggplot-example.pdf"),
       dpi = 600, 
       width = 6.5, 
       height = 6.5)
