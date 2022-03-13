install.packages(c("ggplot2", "devtools", "dplyr", "stringr"))
install.packages(c("maps", "mapdata"))
library(ggplot2)
library(ggmap)
library(maps)
library(mapdata)
library(ggrepel)


states <- map_data("state")
california <- subset(states, region %in% c("california"))
ggplot() +
  geom_polygon(data = california, aes(x = long, y = lat), fill = "blue", color = "black")
load('D:/Sydney School/wind_turbines.rda')
wind_ca <- subset(wind_turbines, t_state %in% c("CA"))

ggplot() +
  geom_polygon(data = california, aes(x = long, y = lat), fill = "deepskyblue4") +
  geom_point(
    data = wind_ca,
    aes(x = xlong, y = ylat),
    size = 3,
    color = "coral2"
  )

