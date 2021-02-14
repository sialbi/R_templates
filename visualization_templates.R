# LOADING FUNCTION TO INSTALL LIBRARIES
source("useful_functions.R")

# ADDING ALL LIBRARIES IN A TABLE

pkg <- c("devtools", "ggplot2", "reshape", "foreign", "stargazer", "psych", "dplyr",
         "car", "gridExtra", "readxl", "tidyverse", "ggswissmaps", "gapminder",
         "hrbrthemes")

# INSTALLING PACKAGES
inst_pack(pkg)

########################################################################

# 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

head(mpg,10)

# Load dataset from github
data <- read.table("https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/1_OneNum.csv", header=TRUE)

# plot
p <- data %>%
  filter( price<300 ) %>%
  ggplot( aes(x=price)) +
  geom_histogram( binwidth=3, fill="#69b3a2", color="#e9ecef", alpha=0.9) +
  ggtitle("Bin size = 3") +
  theme_ipsum() +
  theme(
    plot.title = element_text(size=15)
  )
p


