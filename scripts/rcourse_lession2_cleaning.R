## Load Packages ###
library(dplyr)

## READ IN DATA ###
data = read.table("data/rcourse_lesson2_data.txt", header=T, sep="\t")

## CLEAN DATA ###
data_clean = data %>%
            filter(name == "Daniel") %>%
            mutate(name = factor(name)) %>%
            filter (year> 1900) %>%
            filter(year <= 2000)

head(data_clean)
xtabs(~name, data_clean)

min(data_clean$year)
max(data_clean$year)