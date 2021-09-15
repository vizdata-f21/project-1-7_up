Income Equality in the United States
================
7 Up: Blossom Mojekwu, Kartik Chamarti, Margaret Reed, Phillip Harmadi

``` r
library(tidyverse)
```

    ## Warning in system("timedatectl", intern = TRUE): running command 'timedatectl'
    ## had status 1

## Dataset

``` r
home_owner <- read_csv("../data/home_owner.csv")
income_mean <- read_csv("../data/income_mean.csv")
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
`income_mean` dataset. The `home_owner` table has 123 rows and 3
columns. The `income_mean` table has 3708 rows and 5 columns.

## Questions

**Question 1:** How has homeownership changed over time, and how does
this trend vary between different races?

  - We hypothesis that homeownership has decreased overtime and possibly
    that the differences in home ownership among races have decreased
    over time. We would like to further explore these hypotheses in our
    visualizations and analysis. We anticipate using some sort of time
    series plot.

**Question 2:** How does household income level growth look like for
each racial group over time, and how does the household income
disparities look like for each racial group?

  - Our hypothesis is that within racial groups, the income disparities
    has actually increased and that overall between racial groups the
    disparities are significant.

  - Another hypothesis is that household income inequalities is the
    highest within Asian-Americans. Our reasoning is that
    Asian-Americans came from different migration purposes. A
    significantly higher proportion of East-Asian and Indian-Americans
    came as professional and skilled white-collared workers while a
    higher proportion of Southeast-Asian Americans and Pacific Islander
    Americans came as blue-collared workers or war refugees.

## Analysis plan

A plan for answering each of the questions including the variables
involved, variables to be created (if any), external data to be merged
in (if any).

**Question 1** will …

  - Insert here…

  - Insert here…

**Question 2** will visualize the income figures for each of household
income quintile - how their figure changes over time for each racial
group.

  - Variables involved will be ‘race’, ‘year’, ‘income\_percentile’
    (mutated from ‘income\_quintile’), and household income (in 2019
    Dollars for the first figure and in ratio to the lowest quintile
    income per year and per race for the second figure).

  - There will be no external data to be merged in, but in the process,
    we will expect to perform some amount of data wrangling, e.g.,
    mutate, filter, select, and pivot.
