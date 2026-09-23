data("airquality")
airquality

# 1. Histogram dengan density
hist(airquality$Wind,
     breaks = 0 + (0:9) * 2.5,
     probability = TRUE,
     xlab = "Wind",
     main = "Histogram + Density Curve")

# Estimasi kepadatan
dens <- density(airquality$Wind, na.rm = TRUE)

# Tambahkan garis kepadatan
lines(dens, col = "turquoise1", lwd = 2)

# 1. Histogram menggunakan paket ggplot
library(ggplot2)

ggplot(airquality, aes(x = Wind)) +
  geom_histogram(aes(y = after_stat(density)),
                 binwidth = 2.5,
                 boundary = 0,
                 fill = "paleturquoise",
                 color = "black") +
  geom_density(color = "hotpink", linewidth = 1) +
  labs(
    title = "Histogram Wind + Density Curve",
    x = "Wind",
    y = "Density"
  )


# 2. Stem-and-leaf plot
stem(airquality$Wind)


# 2. Boxplot dengan lattice
library(lattice)
bwplot(~ Wind, data = airquality,
       main = "Boxplot Wind",
       xlab = "Wind")

# 3. Scatterplot 
xrange <- range(airquality$Wind, na.rm = TRUE)
yrange <- range(airquality$Temp, na.rm = TRUE)

plot(Temp ~ Wind, data = airquality,
     xlim = xrange,ylim = yrange,
     pch = 16,
     main = "Scatterplot Wind vs Temperature",
     xlab = "Wind",
     ylab = "Temperature")

# Rug plot pada sumbu X
rug(airquality$Wind)

# Rug plot pada sumbu Y
rug(airquality$Temp, side = 2)