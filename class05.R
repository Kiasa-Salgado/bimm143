#' ---
#' title: "Week 4 ggplot RMB submission"
#' author: "Kiasa Salgado (A15255422)"
#' date: "October 17th, 2021"
#' ---
library(ggplot2)
install.packages("ggplot2", repos = "http://cran.us.r-project.org")
# 1st geom_point() plot of cars data
library(ggplot2)
ggplot(cars) +
  aes(x=speed, y=dist) +
  geom_point()
# Full plot attempt for cars
library(ggplot2)
ggplot(cars) + 
  aes(x=speed, y=dist) +
  geom_point() +
  labs(title="Speed and Stopping Distances of Cars",
       x="Speed (MPH)", 
       y="Stopping Distance (ft)",
       subtitle = "vroom",
       caption="Dataset: 'cars'") +
  geom_smooth(method="lm", se=FALSE) +
  theme_bw()
# moving on to data set genes
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)
p <- ggplot(genes) + 
  aes(x=Condition1, y=Condition2, col=State) +
  geom_point()
p + scale_colour_manual(values=c("blue","gray","red")) +
  labs(title="Gene Expresion Changes Upon Drug Treatment",
       x="Control (no drug) ",
       y="Drug Treatment")