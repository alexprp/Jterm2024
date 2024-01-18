# Tell R which program to use: ggplot2, a plotting powerhouse
library(ggplot2)

# Tell R to read in the data file
tpcs = read.csv("./Tetra_TPC_24h.csv")

# Plot with ggplot2
ggplot(data = tpcs, aes(x = Temperature, y = R)) +
  geom_point() +
  theme_bw(base_size = 12) +
  labs(x = 'Temperature (ºC)',
       y = 'R = ln(final / initial)/days',
       title = '24 h growth of Tetrahymena across temperatures')

# Plot replicates in different colors
ggplot(data = tpcs, aes(x = Temperature, y = R, color = Replicate)) +
  geom_point() +
  theme_bw(base_size = 12) +
  labs(x = 'Temperature (ºC)',
       y = 'R = ln(final / initial)/days',
       title = '24 h growth of Tetrahymena across temperatures')
