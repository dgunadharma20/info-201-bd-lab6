## In this problem set we want you to programmatically print meaningful answers where applicable. 
## For instance, if the question is What is the binge drinking rate in the US in 2012?, the answer
## should be something like this (as a comment):
## 2012 binge drinking rate in the US was 56%
##
## The printed answer should be brief and explanatory, so persons who know the data and questions 
## can understand it. And it should be correct too! Also, be reasonable. If the question is to 
## "create a subdata for year 2012", you just create the data and do not print out 3000 lines! 
## When you run (source) your whole script, it should output the messages so they form a readable 
## text. If in doubt imagine you are creating a report for Congress, for busy politicians who want
## to get the relevant answers quickly.

################################### Set up ###################################

## Install dplyr (if not installed)
## make sure you install it only once!
## install.packages('dplyr')

## Print your working directory.
## Ensure it is an appropriate project folder

## load dplyr package 
library(dplyr)

# Read in `any_drinking.csv` data using relative path
any_drinking = read.csv("any_drinking.csv")

# Read in `binge.drinking.csv` data using relative path
binge_drinking = read.csv("binge_drinking.csv")

### -------------------- Any drinking in 2012 --------------------
## For this first section, you will work only with the *any drinking* dataset.
## In particular, we'll focus on data from 2012, keeping track of the `state` and `location` variables

## Create a data frame that has the `state` and `location` columns, and all columns with data from 2012

## Using the 2012 data, create a column that has the difference in male and female drinking patterns

## Create a *dataframe* of the locations, states, and differences for all locations where females drink more than males
## (no extra columns).
## Are there any locations where females drink more than males?
## Comment your result (as a comment)

## What is the location in which male and female drinking rates are most similar
## (*absolute* difference is smallest)?
## Your answer should be a *dataframe* of the location, state, and value of interest
## (no extra columns)

## As you've (hopefully) noticed, the `location` column includes national, state, and county level
## estimates.  However, many audiences may only be interested in the *state* level data.
## Given that, you should do the following:
## * Create a new data frame that is only the state level observations in 2012
## * For the sake of this analysis, you should treat Washington D.C. as a *state*
##
## Hint: check the 'state' and 'location' variables and think how to extract only
## state-level data


## Which state had the **highest** drinking rate for both sexes combined? 
## Your answer should be a *dataframe* of the state and value of interest (no extra columns)
##
## For your check: this is Vermont

## Which state had the **lowest** drinking rate for both sexes combined?
## Your answer should be a *dataframe* of the state and value of interest (no extra columns)

## What was the difference in (any-drinking) prevalence between the state with the highest level of
## consumption, and the state with the lowest level of consumption?
## Your answer should be a single value.

## Write a function that allows you to specify a state, then saves a .csv file with only observations from
## that state. This includes data about the state itself, as well as the counties within the state
## You should use the entire any.drinking dataset for this function
## The file you save in the `output` directory indicates the state name
## Make sure to exclude rownames


## Demonstrate your function works by writing 3 .csv files of the states of your choice


### -------------------- Binge drinking Dataset --------------------
## In this section, we'll ask a variety of questions regarding our binge drinking dataset
## Moreover, we'll be looking at a subset of the observations which is just the counties 
## (i.e., exclude state/national estimates)
## In order to ask these questions, you'll need to first prepare a subset of the data for this section:
##  
## Create a dataframe with only the county level observations from the binge_driking dataset 
## This does include "county-like" areas such as parishes and boroughs
## You should (again) think of Washington D.C. as a state, and therefore *exclude it here*

## What is the average level of binge drinking in 2012 for both sexes (across the counties)?
## Just compute a single average number over all 3000 or so counties
## (but do not include the national and state level figures)

## What is the *minimum* level of binge drinking in each state in 2012 for both sexes (across the
## counties)
## It should contain roughly 50 values (one for each state), unless there are two counties in a
## state with the same value
## Your answer should be a *dataframe* with the 2012 binge drinking rate, location, and state
## Hint: use `group_by` function


## Which county in Washington state had lowest level of binge drinking?  What was the level?
## Hint: 14.7, Franklin County


## What is the county with the largest increase in male binge drinking between 2002 and 2012?
## Your answer should include the county, state, and value of interest


## How many counties experienced an increase in male binge drinking between 2002 and 2012?
## Your answer should be an integer.


## What percentage of counties experienced an increase in male binge drinking between 2002 and 2012?
## Your answer should be a fraction or percent (but please state that in your output)


## How many counties observed an increase in female binge drinking in this time period?
## Your answer should be an integer.


## What percentage of counties experienced an increase in female binge drinking between 2002 and 2012?
## Your answer should be a fraction or percent (we're not picky)


## How many counties experienced a rise in female binge drinking *and* a decline in male binge drinking?
## Your answer should be an integer (a dataframe with only one value is fine)
## Hint: 786

### -------------------- Joining (merging) data --------------------
## You'll often have to join different datasets together in order to ask more involved questions of your
## dataset.
## Note that the dataframes include a large number of similar column names.
## You have either to rename these, or ensure that both will be renamed automatically
## with descriptive suffixes (or prefixes), such as '_any' and '_binge'.

## Join the dataframes: create a dataframe with all of the columns from both datasets. 
## Think carefully about the *type* of join you want to do, and what the *keys*
## (identifiers) are

## Create a column of difference between `any` and `binge` drinking for both sexes in 2012

## Which location has the greatest *absolute* difference between `any` and `binge` drinking?
## Your answer should be a one row data frame with the state, location,
## and value of interest (difference)
## Hint: in Virginia


## ------------------------------ Write a function to ask your own question(s) ------------------------------
## Even in an entry level data analyst role, people are expected to come up with their own questions
## of interest (not just answer the questions that other people have). For this section, you should
## *write a function* that allows you to ask the same question on different subsets of data. For
## example, you may want to ask about the highest/lowest drinking level given a state or year. The
## purpose of your function should be evident given the input parameters and function name. However,
## add also explanation of what it does and what are the input parameters in comments inside the
## function definition.
##
## Note: the question should be relevant for this data, i.e. related to drinking and geography,
## or any other
## interesting features this data is well suited for.  Do not ask questions you may get better answer
## from different data (e.g. only about geography).

## After writing your function, *demonstrate* that the function works by passing in different
## parameters to your function.

## Average binge drinking of both sexes each year from given state


### -------------------- Challenge --------------------
## Using a dataframe of your choice from above, write a function that allows you to specify a *year* and
## *state* of interest,
## that saves a .csv file with observations from that state's counties (and the state itself) 
## It should only write the columns `state`, `location`, and data from the specified year. 
## Before writing the .csv file, you should *sort* the data_frame in descending order
## by the both_sexes drinking rate in the specified year. 
## Again, make sure the file name you save in the output directory indicates the year and state,
## and that it does not include row names.
## 
## Note: depending on how you approach this problem, you may confront how dplyr
## uses *non-standard evaluation*
## Hint: https://cran.r-project.org/web/packages/dplyr/vignettes/nse.html
## If you find this to be overwhelming, consider using the base-R indexing instead.
##
## Alternatively, I recommend to use 'tidyr' tools to transform the data into long form
## (tidy form), perform selection in long form, and transform it back into the wide form thereafter.
## Hint: https://r4ds.had.co.nz/tidy-data.html
##
## Demonstrate that your function works by passing a year and state of your interest to the function



