#####六种常见的机器学习算法的R代码#########################
#均为伪代码，需要时调用

###决策树##################################################
library(rpart)
x <- cbind(x_train,y_train)
fit <- rpart(y_train ~ ., data = x,method="class")
summary(fit)
predicted= predict(fit,x_test)

###支持向量机（SVM）##################################################
library(e1071)
x <- cbind(x_train,y_train)
fit <-svm(y_train ~ ., data = x)
summary(fit)
predicted= predict(fit,x_test)

###支持向量机（SVM）##################################################
library(e1071)
x <- cbind(x_train,y_train)
fit <-naiveBayes(y_train ~ ., data = x)
summary(fit)
predicted= predict(fit,x_test)

###支持向量机（SVM）##################################################
library(knncat)
x <- cbind(x_train,y_train)
fit <-knn(y_train ~ ., data = x,k=5)
summary(fit)
predicted= predict(fit,x_test)

###K-Means聚类##################################################
library(cluster)
fit <- kmeans(X) #仅用于生存数据，见descroption

###随机森林##################################################
library(randomForest)
x <- cbind(x_train,y_train)
fit <- randomForest(Species ~ ., x, ntree=500)
summary(fit)
predicted= predict(fit,x_test)
