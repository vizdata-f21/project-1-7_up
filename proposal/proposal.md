Exploring income equality
================
Seven-Up

``` r
library(tidyverse)
```

    ## Warning in system("timedatectl", intern = TRUE): running command 'timedatectl'
    ## had status 1

## Dataset

``` r
home_owner <- read_csv("../data/home_owner.csv")
income_distribution <- read_csv("../data/income_distribution.csv")
```

The dataset comes from the Urban Institute and US Census and focuses on
racial wealth inequality. We chose this dataset because wealth
inequality is a very important issue in America, and it would be
valuable to see the relationship between race and wealth over time in
America. There are around 5-6 data files focused on the relationship
between race and income over time. There are also important files on the
relationship between race and retirement, homeownership, and student
debt.

We anticipate primarily using the `home_owner` dataset and the
`income_distribution` dataset. The `home_owner` table has 123 rows and 3
columns. The `income_distribution` table has 2916 rows and 9 columns.

## Questions

**Question 1:** How has homeownership changed over time, and how does
this trend vary between different races?

We hypothesis that homeownership has decreased overtime and possibly
that the differences in home ownership among races have decreased over
time. We would like to further explore these hypotheses in our
visualizations and analysis. We anticipate using some sort of time
series plot.

**Question 2:** How is wealth and income distributed within different
racial groups, and how has this changed over time?

Our hypothesis is that within racial groups, the wealth disparities has
actually increased and that overall between racial groups the
disparities are significant.

## Analysis plan

A plan for answering each of the questions including the variables
involved, variables to be created (if any), external data to be merged
in (if any).
