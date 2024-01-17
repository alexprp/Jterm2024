##Install Packages
library(tidyverse)
library(ggplot2)
library(nls.multstart)##Prepare and insert file here
tpcs <- read.csv("./Tetra_TPC_24h.csv")
tpcs <- tpcs %>%
  filter(Count>=1) %>%
  mutate(r = log(Count/Initial)) %>%
  mutate(r_scale=10,
         log_r=log(r+r_scale)) %>%
  ungroup##Display data
ggplot(tpcs, aes(Temp, log_r)) +
  geom_point() +
  theme_bw(base_size = 12) +
  labs(x = 'Temperature (ºC)',
       y = 'Log R',
       title = '24 h Growth across temperatures')
