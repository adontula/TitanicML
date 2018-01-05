#Set current working directory and import data
setwd("~/Documents/R/Titanic")
train <- read.csv("train.csv")
test <- read.csv("test.csv")
test$Survived <- rep(0, 418)
submit <- data.frame(PassengerId = test$PassengerId,
                     Survived = test$Survived)
write.csv(submit, file = "nosurvivors.csv", row.names = FALSE)