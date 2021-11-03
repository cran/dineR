## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
library(dineR)

## -----------------------------------------------------------------------------
# Number of observations in sample 1
n_X <- 100 
# Number of features in sample 1
p_X <- 100
# Number of observations in sample 2
n_Y <- n_X
# Number of features in sample 2
p_Y <- p_X
# Generate the data
data <- data_generator(n = n_X, p = p_X, seed = 123)

## -----------------------------------------------------------------------------
X <- data$X
Y <- data$Y

## -----------------------------------------------------------------------------
loss <- "lasso"
nlambda <- 3
tuning <- "none"

## -----------------------------------------------------------------------------
result <- estimation(X, Y, loss = loss, nlambda = nlambda, tuning = tuning)

## -----------------------------------------------------------------------------
names(result)

