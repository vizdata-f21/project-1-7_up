# Wealth and income over time

The data this week comes from the [Urban Institute](https://apps.urban.org/features/wealth-inequality-charts/) and the [US Census](https://www.census.gov/data/tables/time-series/demo/income-poverty/historical-income-households.html).

The Urban Institute lays out nine charts about racial wealth inequality in America in this [article](https://apps.urban.org/features/wealth-inequality-charts/). They include several summary-level datasets that I've included.

> **Nine Charts about Wealth Inequality in America**
> Why hasn't wealth inequality improved over the past 50 years? And why, in particular, has the racial wealth gap not closed? These nine charts illustrate how income inequality, earnings gaps, homeownership rates, retirement savings, student loan debt, and lopsided asset-building subsidies have contributed to these growing wealth disparities.

The US Census provides [Historical Income Tables](https://www.census.gov/data/tables/time-series/demo/income-poverty/historical-income-households.html), of which we have joined several to compare wealth and income over time by race.

The Brookings Institute has another [article](https://www.brookings.edu/blog/up-front/2020/02/27/examining-the-black-white-wealth-gap/) detailing some additional reasons how historically wealth has been difficult to acquire or even institutionally kept away from many Black Americans.

> Efforts by Black Americans to build wealth can be traced back throughout American history. But these efforts have been impeded in a host of ways, beginning with 246 years of chattel slavery and followed by Congressional mismanagement of the Freedman's Savings Bank (which left 61,144 depositors with losses of nearly \$3 million in 1874), the violent massacre decimating Tulsa's Greenwood District in 1921 (a population of 10,000 that thrived as the epicenter of African American business and culture, commonly referred to as "Black Wall Street"), and discriminatory policies throughout the 20th century including the Jim Crow Era's "Black Codes" strictly limiting opportunity in many southern states, the GI bill, the New Deal's Fair Labor Standards Act's exemption of domestic agricultural and service occupations, and redlining. Wealth was taken from these communities before it had the opportunity to grow.

### Data Dictionary

# `lifetime_earn.csv`

Average lifetime earning by race/gender

|variable      |class     |description |
|:-------------|:---------|:-----------|
|gender        |character | gender column |
|race          |character | Racial group |
|lifetime_earn |double    | Lifetime earnings |

# `student_debt.csv`

Average family student loan debt for aged 25-55, by race and year normalized to 2016 dollars.

|variable      |class     |description |
|:-------------|:---------|:-----------|
|year          |double    | Year of measure |
|race          |character | Racial group |
|loan_debt     |double    | Loan debt|
|loan_debt_pct |double    | Share of families with student loan debt |

# `retirement.csv`

Average family liquid retirement savings normalized to 2016 dollars.

|variable   |class     |description |
|:----------|:---------|:-----------|
|year       |double    | Year|
|race       |character | Racial group |
|retirement |double    | Retirement dollars |

# `home_owner.csv`

Home ownership percentage for families by 

|variable       |class     |description |
|:--------------|:---------|:-----------|
|year           |double    | Year |
|race           |character | Racial group |
|home_owner_pct |double    | Home ownership by race/ethnicity |


# `race_wealth.csv`

Family wealth by race/year/measure normalized to 2016, with measures of central tendency with mean and median.

|variable      |class     |description |
|:-------------|:---------|:-----------|
|type          |character | Type of measure, either median or mean |
|year          |double    | Year |
|race          |character | Racial group |
|wealth_family |double    | Family wealth by race/year/measure normalized to 2016. |

# `income_time.csv`

Family-level income by percentile and year. 

|variable      |class     |description |
|:-------------|:---------|:-----------|
|year          |integer   | Year |
|percentile    |character | Income percentile (10th, 50th, 90th) |
|income_family |double    | Familial income |

# `income_limits.csv`

Familial income limits for each fifth by year and race.

|variable        |class     |description |
|:---------------|:---------|:-----------|
|year            |double    | Year |
|race            |character | Racial group |
|dollar_type     |character | Dollars in that year or normalized to 2019 |
|number          |double    | Number of households by racial group |
|income_quintile |character | Income quintile as well as top 5% |
|income_dollars  |double    | Income in US dollars, specific to dollar type |

# `income_aggregate.csv`

Share of aggregate income received by each fifth and top 5% of each racial group/household.

|variable        |class     |description |
|:---------------|:---------|:-----------|
|year            |double    | Year |
|race            |character | Racial group |
|number          |double    | Number of households by racial group |
|income_quintile |character | Income quintile and/or top 5% |
|income_share    |double    | Income share as a percentage |

# `income_distribution.csv`

Households by total money income, race, and hispanic origin of householder separated by year and income groups.

|variable            |class     |description |
|:-------------------|:---------|:-----------|
|year                |integer   | Year |
|race                |character | Racial Group |
|number              |double    | Number of households |
|income_median       |integer   | Income median |
|income_med_moe      |integer   | Income median margin of error |
|income_mean         |integer   | Income mean |
|income_mean_moe     |integer   | Income mean margin of error |
|income_bracket      |character | Income bracket (9 total brackets between `<$15,000` and `>$200,000` |
|income_distribution |double    | Income distribution as the percentage of each year/racial group - should add up to 100 for a specific year and race. |

# `income_mean.csv`

Mean income received by each fifth and top 5% of each racial group.

|variable        |class     |description |
|:---------------|:---------|:-----------|
|year            |double    | Year |
|race            |character | Racial group |
|dollar_type     |character | Dollar type, ie dollar relative to that year or normalized to 2019 |
|income_quintile |character | Income quintile and/or top 5% |
|income_dollars  |double    | Income dollar average |

### Reference Articles

- [Freedman's Savings Bank congressional mismanagement](https://www.occ.treas.gov/about/who-we-are/history/1863-1865/1863-1865-freedmans-savings-bank.html)  
- [Tulsa Race Massacre](https://en.wikipedia.org/wiki/Tulsa_race_massacre)  
- [Jim Crow Laws](https://en.wikipedia.org/wiki/Jim_Crow_laws)  

The Pew Research Center also outlines demographic trends and economic well-being in their [article](https://www.pewsocialtrends.org/2016/06/27/1-demographic-trends-and-economic-well-being/) and another [article](https://www.pewresearch.org/fact-tank/2017/11/01/how-wealth-inequality-has-changed-in-the-u-s-since-the-great-recession-by-race-ethnicity-and-income/) on details since the Great Recession (2016). The Federal Reserve has another [article](https://www.federalreserve.gov/econres/notes/feds-notes/disparities-in-wealth-by-race-and-ethnicity-in-the-2019-survey-of-consumer-finances-20200928.htm) on Racial disparities in wealth.

There's a ton of different datasets, all within the scope of wealth, income, or debt over time and by race. The data were fairly tame, but in Excel sheets that weren't ready for analyses. I went ahead and cleaned the data, but feel free to play with the original raw data as well. Many of the datasets could be merged/joined but I would be careful about potential spurious correlations. A good starter dataset is the `income_distribution.csv` as it includes year, race, number of households, income median/mean, income bracket, and income distribution by bracket.

More appropriate for summary plots:  
- student_debt, retirement, home_owner, lifetime_earn, lifetime_wealth, race_wealth, income_time, and wealth_distribution are from the Urban Institute and are more appropriate for summary plots.

More appropriate for comparisons:  
- income_mean, income_distribution, income_limits, and income_aggregate are more appropriate as comparison datasets and have the full racial breakdown across the available years.

