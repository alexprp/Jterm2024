##Install Packages
library(ggplot2)
tpcs <- read.csv("./Tetra_TPC_24h.csv")
ggplot(tpcs, aes(x = Temperature, y = R)) +
  geom_point() +
  theme_bw(base_size = 12) +
  labs(x = 'Temperature (ºC)',
       y = 'R',
       title = '24 h Growth across temperatures')
