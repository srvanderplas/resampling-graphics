library(tidyverse)

n <- 206
d <- tibble(x=runif(n)) %>%
  mutate(y=3*x+rnorm(n))

ggplot(d, aes(x, y)) + geom_point(alpha=0.5) +
  theme_minimal()

ggplot(d[sample(1:n, replace=TRUE), ], aes(x, y)) +
           geom_point(alpha=0.5) +
  theme_minimal()
