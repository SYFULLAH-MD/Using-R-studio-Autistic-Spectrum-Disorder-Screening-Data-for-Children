mydata<-read.csv(file.choose())
str(mydata)
dim(mydata)
tindex = sort(sample(nrow(mydata), nrow(mydata)*.7))
mtraining<-mydata[tindex,]
mtesting<-mydata[-tindex,]
library(e1071)
NB<-naiveBayes(Class.ASD~.,data=mtraining)
print(NB)
predNB1<-predict(NB,mtesting)
table(mtesting$Class.ASD,predNB1)
plot(predNB1)
