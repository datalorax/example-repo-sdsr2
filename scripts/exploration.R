library(tidyverse)
ggplot(mpg, aes(displ, hwy)) +
  geom_point(alpha = 0.3, stroke = 0, size = 2) +
  geom_smooth() +
  theme_minimal(base_size = 15) +
  labs(title = "The definitive ggplot2 plot") +
  theme(plot.title.position = "plot")

ggsave(here::here("plots", "ggplot-example.pdf"),
       dpi = 600, 
       width = 6.5, 
       height = 6.5)
