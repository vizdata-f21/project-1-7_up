Final Viz
================

``` r
library(tidyverse)
library(viridis)
# library(gganimate)
```

``` r
income_mean <- read.csv(file = "../data/income_mean.csv")
home_owner <- read_csv(file = "../data/home_owner.csv")
```

### Question 1

``` r
lowest_year <- home_owner %>%
  group_by(year) %>%
  summarize(mean_pct_unweighted = mean(home_owner_pct)) %>%
  arrange(mean_pct_unweighted) %>%
  slice(1) %>%
  pull(year)
highest_year <- home_owner %>%
  group_by(year) %>%
  summarize(mean_pct_unweighted = mean(home_owner_pct)) %>%
  arrange(desc(mean_pct_unweighted)) %>%
  slice(1) %>%
  pull(year)  
```

#### Plot 1.a

``` r
home_owner %>%
  ggplot(
    aes(x = year, y = home_owner_pct, color = race, shape = race)
  ) +
  geom_line() +
  geom_point(alpha = 0.5, size = 1) +
  geom_vline(aes(xintercept = lowest_year), color = "grey") +
  geom_vline(aes(xintercept = highest_year), color = "grey") +
  geom_label(x = lowest_year - 5, y = 0.56, 
            label = paste0("Year with lowest \nhome ownership (", lowest_year, ")"), 
            color = "black",
            label.size = NA) +
    geom_label(x = highest_year + 5, y = 0.56, 
            label = paste0("Year with highest \nhome ownership (", highest_year, ")"), 
            color = "black",
            label.size = NA) +
  # gganimate::transition_reveal(year) +
  scale_color_viridis_d() +
  labs(
    x = "Year",
    y = "Percent owning homes",
    color = "Race",
    shape = "Race",
    title = "Home ownership over time",
    subtitle = "by race"
  ) +
  theme_minimal() +
  scale_y_continuous(labels = scales::percent_format(scale = 100))
```

![](final-viz_files/figure-gfm/first-look-1.png)<!-- -->

### Question 2

#### Plot 2.a

``` r
income_mean %>%
  filter(!str_detect(race, "Combination"),
         !str_detect(race, "Not Hispanic"),
         !str_detect(race, "All"),
         dollar_type == "2019 Dollars",
         income_quintile != "Top 5%") %>%
  mutate(race = str_remove(race, ',?\\s(.*)'),
         income_quintile = ordered(income_quintile, c("Lowest", "Second", 
                                                      "Middle", "Fourth", 
                                                      "Highest"))) %>%
  ggplot(
    aes(x = year, y = income_dollars, color = income_quintile)
  ) +
  geom_line() +
  facet_wrap(.~race, nrow = 1) +
  scale_y_continuous(labels = scales::label_number(big.mark = ",", 
                                                   scale = 0.001, 
                                                   suffix = "k",
                                                   prefix = "$")) +
  scale_color_manual(values = c("grey40", "grey50", "grey60", "grey70", "firebrick2")) +
  labs(
    title = "Income Gap: How does income distribution compare for each race?",
    subtitle = "By income quintile",
    x = "Year", y = "Mean household income", 
    color = "Income quintile",
    caption = "7 Up: Blossom Mojekwu, Kartik Chamarti, Margaret Reed, Phillip Harmadi"
    ) +
  theme_minimal() +
  theme(legend.position = "bottom")
```

![](final-viz_files/figure-gfm/plot-2a-1.png)<!-- -->
