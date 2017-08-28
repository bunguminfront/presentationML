library(ggplot2)

qplot(wt, mpg, data = mtcars, geom = c("point", "smooth"), method = "lm", formula = y ~ x, color = cyl, main = "Regression of MPG on Weight", xlab = "Weight", ylab = "Miles per Gallon")

ggplot(data = mtcars,
aes(wt, mpg, fill = factor(cyl), col = factor(cyl))) +
labs (x = "Weight", y = "Miles Per Gallon") +
geom_point() + 
geom_smooth(method = "lm")

#facet_grid(. ~ cyl) +