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
why this plot (e.g. boxplot, barplot, histogram, etc.) is best for
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

## Question 2 &lt;- How severe is income inequality within each race in the United States?

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

  - **Absolute household income figures for each income quintile by race by 
    year.** A ***line graph*** with facets is best for this plot since we are 
    trying to visualize how absolute income has grown over time over time.
    A line graph is ideal for time series data, and a facet is necessary since
    we are dealing with multiple income quintiles.

  - **Household income ratio (with the lowest income quintile as the baseline) 
    for each income quintile by race.** A ***bar graph*** is deemed appropriate 
    for this plot since we are trying to compare how much the top income quintile 
    earns more than the bottom income quintile for each racial groups and
    understand which race has the highest gap. A bar graph is ideal since we can 
    group or stack them together and color them based on the income quintile
    variable, making the visualization easier to be understood by readers.

### Analysis

  - Variables involved will be `race`, `year`, `income_percentile`
    (mutated from `income_quintile`), and household income (in 2019
    Dollars for the first figure and in ratio to the lowest quintile
    income per year and per race for the second figure).

  - There will be no external data to be merged in, but in the process,
    we will expect to perform some amount of data wrangling, e.g.,
    `mutate`, `filter`, `select`, and `pivot`.

(2-3 code blocks, 2 figures, text/code comments as needed) In this
section, provide the code that generates your plots. Use scale functions
to provide nice axis labels and guides. You are welcome to use theme
functions to customize the appearance of your plot, but you are not
required to do so. All plots must be made with ggplot2. Do not use base
R or lattice plotting functions.

### Discussion

From the first plot, we can roughly see that Whites and Asians has the highest
household income level for all income percentiles within a particular race.
The top 5% Blacks and Hispanic households approximately (in average) earns the 
same as the top 20% Whites and Asians households. In addition, we can see that
the data is only available for Hispanics starting from the early 1970s and 
Asian starting from the early 2000s. This is because the U.S. Census Bureau 
only formally include Hispanic and Asian as a category on its surveys in the 
early 1970s and 2000s respectively. In general, currently, Asian households has 
the highest household income in average, followed by White, Hispanic, and lastly 
Black households. We suspect that income is the highest among Asians due to their 
highest educational attainment in average, and lowest in Blacks due to the systemic
disadvantages they have experienced as outlined in the U.S. history.

From the second plot, we can roughly have a gist that income inequality is the
highest within Black households, followed by Asian, White, then Hispanic 
households. 
  - The top quintile (1st-20th) Black households earn 21x compared to
    the bottom quintile (81st-100th) Black household. The figures are 16x, 15x, and 
    13.5x for Asian, White, and Hispanic.
  - The second top quintile (21st-40th) Black households earn 8.6x compared to
    the bottom quintile (81st-100th) Black household. The figures are 7.4x, 6.8x, and 
    6.5x for Asian, White, and Hispanic.

Our speculation is that income inequality is highest among the Blacks is due to 
lack of high-paying jobs and opportunities for Blacks living in the rural Southern 
States vs. those living in Northeastern or Midwestern urban areas. For Asians,
we speculate that income inequality comes from different migration pattern and 
sources, for example, Indian and Chinese Americans have a high proportion of
professional college-educated citizens, while a lot of Southeast Asian Americans
are doing blue-collared jobs and many came to the United States as refugees
from less wealthy backgrounds.

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
