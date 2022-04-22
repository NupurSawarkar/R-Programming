dat <- iris
head(dat)
str(dat) # structure of dataset
min(dat$Sepal.Length)
max(dat$Sepal.Length)
rng <- range(dat$Sepal.Length)
rng
rng[1] # rng = name of the object specified above
rng[2]
#Range
max(dat$Sepal.Length) - min(dat$Sepal.Length)
#function to compute the range
range2 <- function(x) {
  range <- max(x) - min(x)
  return(range)
}
range2(dat$Sepal.Length)

mean(dat$Sepal.Length)
median(dat$Sepal.Length)
quantile(dat$Sepal.Length, 0.5)

quantile(dat$Sepal.Length, 0.25) # first quantile
quantile(dat$Sepal.Length, 0.75) # third quantile

quantile(dat$Sepal.Length, 0.4) # 4th percentile
quantile(dat$Sepal.Length, 0.98) # 98th percentile

IQR(dat$Sepal.Length)
quantile(dat$Sepal.Length, 0.75) - quantile(dat$Sepal.Length, 0.25)

#The standard deviation and the variance is computed with the sd() and var() functions
sd(dat$Sepal.Length) # standard deviation
var(dat$Sepal.Length) # variance

#: to compute the standard deviation (or variance) of multiple variables at the same time, use lapply() with the appropriate statistics as second argument
lapply(dat[, 1:4], sd)

#By Function
by(dat, dat$Species, summary)

#Contingency table
dat$size <- ifelse(dat$Sepal.Length < median(dat$Sepal.Length),
                   "small", "big"
)
table(dat$size)
table(dat$Species, dat$size)
#xtabs
xtabs(~ dat$Species + dat$size)
#prop table function
prop.table(table(dat$Species, dat$size))
round(prop.table(table(dat$Species, dat$size), 1), 2) 

#Coefficient of variation
sd(dat$Sepal.Length) / mean(dat$Sepal.Length)

#Mode
tab <- table(dat$Sepal.Length)
sort(tab, decreasing = TRUE)

#Table Function
sort(table(dat$Species), decreasing = TRUE)
summary(dat$Species)


#Plots
mosaicplot(table(dat$Species, dat$size),
           color = TRUE,
           xlab = "Species", # label for x-axis
           ylab = "Size" # label for y-axis
)

#Barplot
barplot(table(dat$size)) # table() is mandatory
barplot(prop.table(table(dat$size)))
library(ggplot2) # needed each time you open RStudio
# The package ggplot2 must be installed first
ggplot(dat) +
  aes(x = size) +
  geom_bar()

#Histogram
hist(dat$Sepal.Length)
ggplot(dat) +
  aes(x = Sepal.Length) +
  geom_histogram(binwidth = 12)

#Boxplot
boxplot(dat$Sepal.Length)
boxplot(dat$Sepal.Length ~ dat$Species)
ggplot(dat) +
  aes(x = Species, y = Sepal.Length) +
  geom_boxplot()

#Dotplot
library(lattice)
dotplot(dat$Sepal.Length ~ dat$Species)

#Scatter Plot
plot(dat$Sepal.Length, dat$Petal.Length)

ggplot(dat) +
  aes(x = Sepal.Length, y = Petal.Length) +
  geom_point()

ggplot(dat) +
  aes(x = Sepal.Length, y = Petal.Length, colour = Species) +
  geom_point() +
  scale_color_hue()

#Line Plot
plot(dat$Sepal.Length,
     type = "l"
) # "l" for line

#QQPlot
# Draw points on the qq-plot:
qqnorm(dat$Sepal.Length)
# Draw the reference line:
qqline(dat$Sepal.Length)

library(ggpubr)
ggqqplot(dat$Sepal.Length)

#By Group
qplot(
  sample = Sepal.Length, data = dat,
  col = size, shape = size
)


#Density Plot
plot(density(dat$Sepal.Length))

ggplot(dat) +
  aes(x = Sepal.Length) +
  geom_density()


#Cross Tabulation
ctable(
  x = dat$Species,
  y = dat$size
)
ctable(
  x = dat$Species,
  y = dat$size,
  prop = "t" # total proportions
)
