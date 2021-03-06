setwd("/Volumes/Data/Users/riyukifeng/cloga.github.io/notebook")
loans = read.csv('loans.csv')
library(mice)
set.seed(144)
vars.for.imputation = setdiff(names(loans), "not.fully.paid")
imputed = complete(mice(loans[vars.for.imputation]))
loans[vars.for.imputation] = imputed
library(caTools)
set.seed(144)
split = sample.split(loans$not.fully.paid, SplitRatio=0.7)
train = subset(loans, split==TRUE)
test = subset(loans, split==FALSE)
model = glm(not.fully.paid ~ ., data=train, family=binomial)
summary(model)
predicted.risk = predict(model, test, type='response')
library(ROCR)
ROCRpred = prediction(predicted.risk, test$not.fully.paid)
performance(ROCRpred, measure = 'auc')
bivariate = glm(not.fully.paid ~ int.rate, data=train, family=binomial)
pred.bivariate = predict(bivariate, newdata=test, type="response")
summary(pred.bivariate)
10 * exp(0.06 * 3)
test$profit = exp(test$int.rate*3) - 1
test$profit[test$not.fully.paid == 1] = -1
summary(test$profit)
test$predicted.risk = predicted.risk
highInterest = subset(test, test$int.rate > 0.15)
mean(highInterest$profit)
table(highInterest$not.fully.paid)
cutoff = sort(highInterest$predicted.risk, decreasing=FALSE)[100]
selectedLoans = subset(highInterest, highInterest$predicted.risk<=cutoff)
sum(selectedLoans$profit)
table(selectedLoans$not.fully.paid)
