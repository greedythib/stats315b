library(rpart)
library(rpart.plot)
# Question 1 
age <- read.csv("hw1/handout/Data/age_stats315B.csv", header= T)
for (i in 1:ncol(age)){
  age[,i] <- as.factor(age[,i])
}
# Y = age[,1]
# X = age[,-1]
# tree <- rpart(Y~X)
tree <- rpart(age ~., data = age, method = "class")
rpart.plot(tree)
pruned <- prune(tree, cp = 0.012699)
rpart.plot(pruned)
