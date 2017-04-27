dat <- read.csv("EconomistData.csv")
head(dat)
library(ggplot2)
##1.Create a scatter plot with CPI on the x axis and HDI on the y axis.
## Color the points to indicate region.
ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +geom_point()
## 2.Modify the x, y, and color scales so that they have more easily-understood names (e.g., spell out “Human development Index” instead of “HDI”).
ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
  geom_point() +
  scale_x_continuous(name = "Corruption Perception Index") +
  scale_y_continuous(name = "Human Development Index") +
  scale_color_discrete(name = "Region of the world")
## 3.Modify the color scale to use specific values of your choosing.
ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
  geom_point() +
  scale_x_continuous(name = "Corruption Perception Index") +
  scale_y_continuous(name = "Human Development Index") +
  scale_color_manual(name = "Region of the world",
                     values = c("#24576D",
                                "#099DD7",
                                "#28AADC",
                                "#248E84",
                                "#F2583F",
                                "#96503F"))
