Visualizing Income Inequality in the United States
================
7 Up: Blossom Mojekwu, Kartik Chamarti, Margaret Reed, Phillip Harmadi

## Introduction

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

(1-2 paragraphs) Brief introduction to the dataset. You may repeat some
of the information about the dataset provided in the introduction to the
dataset on the TidyTuesday repository, paraphrasing on your own terms.
Imagine that your project is a standalone document and the grader has no
prior knowledge of the dataset.

## Question 1 &lt;- Update title to relate to the question you’re answering

### Introduction

(1-2 paragraphs) Introduction to the question and what parts of the
dataset are necessary to answer the question. Also discuss why you’re
interested in this question.

### Approach

(1-2 paragraphs) Describe what types of plots you are going to make to
address your question. For each plot, provide a clear explanation as to
why this plot (e.g. boxplot, barplot, histogram, etc.) is best for
providing the information you are asking about. The two plots should be
of different types, and at least one of the two plots needs to use
either color mapping or facets.

### Analysis

(2-3 code blocks, 2 figures, text/code comments as needed) In this
section, provide the code that generates your plots. Use scale functions
to provide nice axis labels and guides. You are welcome to use theme
functions to customize the appearance of your plot, but you are not
required to do so. All plots must be made with ggplot2. Do not use base
R or lattice plotting functions.

### Discussion

(1-3 paragraphs) In the Discussion section, interpret the results of
your analysis. Identify any trends revealed (or not revealed) by the
plots. Speculate about why the data looks the way it does.

## Question 2 &lt;- How severe is income inequality within each race over time in the United States?

### Introduction

Most income inequality research focuses on the income disparity between 
different races, for example, how Asian Americans and White Americans
typically have higher income as compared to African Americans and 
Hispanic Americans. There is siginifcantly less research focusing on
the income disparities within each of the races. We are trying to 
figure out the degree of income inequality for each of the races
within their own community.

In this question, we will be using the income_mean.csv. This dataset
is sufficient since it provides us with the income information for
each houshold quintiles each year for each race. We will be using all 
variables of the dataset ('year', 'race', 'dollar_type', 
'income_quintile', 'income_dollars', which will be explained further 
in the "Approach" section.

### Approach

We are making 2 different plots to address our question:

(1) Absolute household income figures for each income quintile by race by 
year.

(2) Household income ratio (baseline = lowest income quintile) for each 
income quintile by race by year.

will visualize the income figures for each of household
income quintile - how their figure changes over time for each racial
group.

  - Variables involved will be `race`, `year`, `income_percentile`
    (mutated from `income_quintile`), and household income (in 2019
    Dollars for the first figure and in ratio to the lowest quintile
    income per year and per race for the second figure).

  - There will be no external data to be merged in, but in the process,
    we will expect to perform some amount of data wrangling, e.g.,
    `mutate`, `filter`, `select`, and `pivot`.

(1-2 paragraphs) Describe what types of plots you are going to make to
address your question. For each plot, provide a clear explanation as to
why this plot (e.g. boxplot, barplot, histogram, etc.) is best for
providing the information you are asking about. The two plots should be
of different types, and at least one of the two plots needs to use
either color mapping or facets.

### Analysis

(2-3 code blocks, 2 figures, text/code comments as needed) In this
section, provide the code that generates your plots. Use scale functions
to provide nice axis labels and guides. You are welcome to use theme
functions to customize the appearance of your plot, but you are not
required to do so. All plots must be made with ggplot2. Do not use base
R or lattice plotting functions.

### Discussion

(1-3 paragraphs) In the Discussion section, interpret the results of
your analysis. Identify any trends revealed (or not revealed) by the
plots. Speculate about why the data looks the way it does.

## Presentation

Our presentation can be found [here](presentation/presentation.html).

## Data

Include a citation for your data here. See
<http://libraryguides.vu.edu.au/c.php?g=386501&p=4347840> for guidance
on proper citation for datasets. If you got your data off the web, make
sure to note the retrieval date.

## References

Our data comes from the [Urban Institute](https://apps.urban.org/features/wealth-inequality-charts/) 
and the [US Census](https://www.census.gov/data/tables/time-series/demo/income-poverty/historical-income-households.html). 
The US Census provides [Historical Income Tables](https://www.census.gov/data/tables/time-series/demo/income-poverty/historical-income-households.html), 
of which we have joined several to compare wealth and income over time by race.

List any references here. You should, at a minimum, list your data
source.
