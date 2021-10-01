Visualizing Income Inequality in the United States
================
7-Up <br> Blossom Mojekwu, Kartik Chamarti, Margaret Reed, Phillip
Harmadi

## Introduction

Our dataset comes from the Urban Institute and US Census and focuses on
racial wealth inequality. We chose this dataset because wealth
inequality is a very important issue in America, and it would be
valuable to see the relationship between race and wealth over time in
America. There are around 5-6 data files focused on the relationship
between race and income over time.

For the purpose of answering the two questions below, we will be
focusing on the `home_owner` and `income_mean` data sets. The
`home_owner` data set will help us to visualize home-ownership rate
information for each race while the `income_mean` dataset will help us
to visualize the income earned for each income quintile for each race
during a particular time period.

## 1\. How has home-ownership rate and wealth changed over time and vary between races?

### Introduction

(1-2 paragraphs) Introduction to the question and what parts of the
dataset are necessary to answer the question. Also discuss why you’re
interested in this question.

We first wanted to investigate how home ownership has changed over time,
and among different racial groups. We decided to use the `home_owner`
dataset and use the `year`, `race`, and `home_owner_pct` variables. We
also wanted to explore the housing bubble in 2006-2008 further as it was
a major event that affected homeownership for many years to come. We
wanted to explore changes in homeownership percentage a few years before
and after the crash and see which races have been particularly affected
by it more. For this, we used the `home_owner` dataset and use the
`year`, `race`, and `home_owner_pct` variables.

### Approach

(1-2 paragraphs) As previously mentioned, apart from just a line plot,
the grouped barplot does an efficient job in comparing 3 different
variables where one is categorical. When making an animated plot, the
benefit of a grouped barplot is that it makes it very easy to see the
exact percentages over time, which is ideal to see the exact changes in
homeownership percentages across the years and racial groups.

### Analysis

(2-3 code blocks, 2 figures, text/code comments as needed) In this
section, provide the code that generates your plots. Use scale functions
to provide nice axis labels and guides. You are welcome to use theme
functions to customize the appearance of your plot, but you are not
required to do so. All plots must be made with ggplot2. Do not use base
R or lattice plotting functions.

#### Plot 1.a

![](README_files/figure-gfm/first-look-1.png)<!-- -->

#### Plot 1.b

![](README_files/figure-gfm/race-wealth-1.png)<!-- -->

#### Plot 1.b.1

![](README_files/figure-gfm/static%20plot%20before/after%202008-1.png)<!-- -->

#### Plot 1.b.2

### Discussion

(1-3 paragraphs)

Around 2007, the homeownership percentages started to decrease across
all racial groups(Black, Hispanic, White), which makes sense as it was
the start of when there were a lot of home foreclosures. Treating 2007
as the baseline, it is apparent that hispanic and black communities were
significantly more affected by the foreclosures than white communities.
This is apparent from the bar chart as there is a larger decrease in
homeownership percentages for the two racial groups compared to the
white demographic. Through the animated grouped bar chart, it can be
noticed that for the most part that homeownership percentages have not
gone back to the levels at which it was before the housing bubble, based
on the most recent data collected at 2016. \#\# 2. How do household
income levels compare between races and within each race?

### Introduction

Most income inequality research focuses on the income disparity between
different races, for example, how Asian Americans and White Americans
typically have higher income as compared to African Americans and
Hispanic/Latino Americans. There is significantly less research focusing
on the income disparities within each of the races. We are trying to
figure out the degree of income inequality for each of the races within
their own community. In this question, we will be using
`income_mean.csv`. This data set is sufficient since it provides us with
the income information for each household quintile, year, and race. We
will be using the following variables: `year`, `race`,
`income_quintile`, and `income_dollars` which will be explained further
in the “Approach” section.

### Approach

**Average income distribution by race has changed over time.** We chose
a ***line plot*** and decided to facet by race with year on the x axis
and average income amount on the y axis. We cared less about looking
into specific years and more about overall trends and comparisons within
each race. To clean the data for this visualization, we filtered out
race categories that included combinations and the “all” category. This
left us with 4 levels: Whites, Blacks, Hispanics, and Asians. We wanted
to highlight the top earners in each racial category- so we colored them
in red. Something interesting to note is that data collection for Asian
observations only started around 2000. It is hard to easily compare
differences between races, so we decided to zoom into 2019 and make a
bar chart.

**Average income for each income quintile by race.** We chose a bar
***bar graph*** because we are trying to compare how much more the top
20% of earners mae than those who make less for each racial group, and
understand which race has the highest gap (through a stacked filled bar
chart). A bar graph is ideal since we can group or stack them together
and color them based on the income quintile variable, making the
visualization easier to be understood by readers.

### Analysis

#### Plot 2.a

![](README_files/figure-gfm/plot-overtime-1.png)<!-- -->

#### Plot 2.b

![](README_files/figure-gfm/plot-bar-1.png)<!-- -->

### Discussion

From the 1st plot, we found that those who are Asian tended to have the
highest average income, and their top 20% made far more than the other
racial groups. Overtime, income disparities in all the racial categories
increased when considering the top 20% of income earners. This increase
in disparity seemed to be most noticeable for White households. We
suspect that generally income is the highest among Asians due to their
high educational attainment on average, and lowest in Black individuals
due to the systemic disadvantages they have experienced throughout U.S.
history.

From the 2nd plot, we can roughly surmise that income inequality is the
highest within Black households and lowest within Hispanic households.
Our speculation is that income inequality is highest among the Black
category on average, because of lack of high-paying jobs and
opportunities for Black individuals living in the rural Southern States
vs. those living in Northeastern or Midwestern urban areas. For Asians,
we speculate that income inequality is higher than Hispanics due to the
different migration patterns and sources that Asian Americans’ ancestors
came from. For example, Indian and Chinese Americans have a high
proportion of professional college-educated citizens, while a lot of
Southeast Asian Americans are doing blue-collared jobs and many came to
the United States as refugees from less wealthy backgrounds.

## Presentation

Our presentation can be found [here](presentation/presentation.html).

## Data

Nine Charts about Wealth Inequality in America (Updated), Urban
Institute, viewed 13 September 2021, <https://www.urban.org>.

Historical Income Tables: Households, US Census, viewed 13 September
2021, <https://www.usa.gov>

## References

List any references here. You should, at a minimum, list your data
source.

Our data comes from the [Urban
Institute](https://apps.urban.org/features/wealth-inequality-charts/)
and the [US
Census](https://www.census.gov/data/tables/time-series/demo/income-poverty/historical-income-households.html).

The US Census provides [Historical Income
Tables](https://www.census.gov/data/tables/time-series/demo/income-poverty/historical-income-households.html),
of which we have joined several to compare wealth and income over time
by race.
