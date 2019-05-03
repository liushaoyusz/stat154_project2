library(caret)
library(class)
library(ISLR)
library(MASS)
library(car)

#K: number of folds
#model:generic classifier
#F = training features
#L = training labeL

classify.error = function(fitted, actual) {
  return(mean(fitted!=actual))
}
CVgeneric = function(model, F,L,K, loss=classify.error) {
  set.seed(123)
  folds <- createFolds(labels, k = K)
  CVerrors = data.frame(matrix(ncol = 0, nrow = 1))
  for (i in 1:K) {
    fold.index = folds[[paste("Fold", i, sep="")]]
    cv = F[fold.index, ]
    train.set = F[-fold.index, ]
    predicted = model(cv)
    im = paste("Fold", i, sep="")
    CVerrors[im] = loss(predicted, labels)
  }
  return(CVerrors)
}
