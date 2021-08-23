library(caret)

# attach iris
data(iris)

dt <- iris

# obtain 80% of the data set for training
validation_index <- createDataPartition(dt$Species, p = 0.8, list = FALSE)
# select 20% for validation and 80% for training
dtValidation <- dt[-validation_index, ]
dtTest <- dt[validation_index, ]

