library(dplyr)
library(ggplot2)
library(readr)
library(GGally)
library(ISLR)

#######################################################################
###                      Carseats                                   ###
#######################################################################


data("Carseats")
?Carseats

# The task is to predict if sales of child car seats at a store falls into the "high" or the "low" category. 
# We therefore first binarize the Sales variable:
High <- ifelse(Carseats$Sales <= 8, "No", "Yes")
High

# the enhanced data frame with the class output
Carseats <- data.frame(Carseats, High)
str(Carseats)

# first, we split into training and test sets, so you can properly estimate the test error
set.seed(2)
train <- sample(1:nrow(Carseats), 200)

X_train <-  Carseats[train, ]
X_test <-  Carseats[-train, ]
y_train <- Carseats$High[train]
y_test <- Carseats$High[-train]


# Questions
# 1 From data exploration, what do you think might be good predictors for sales of child car seats?


# 2
# Use logistic regression to check your guess.



# 3
# Looking at the resulting accuracy, precision and recall, would you be content?

