# load packages here
library(tidyverse)
library(readr)
install.packages("tidytuesdayR")
tuesdata <- tidytuesdayR::tt_load('2021-02-09')

for(x in c("income_mean", "lifetime_earn", "student_debt", "retirement",
           "home_owner", "race_wealth", "income_time", "income_limits",
           "income_aggregate", "income_distribution")){
  write.csv(tuesdata[[x]], file = paste0("data/", x, ".csv"), row.names=F)
}
