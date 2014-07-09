xtest<-read.table('UCI HAR Dataset\\test\\X_test.txt')
ytest<-read.table('UCI HAR Dataset\\test\\y_test.txt')

xtrain<-read.table('UCI HAR Dataset\\train\\X_train.txt')
ytrain<-read.table('UCI HAR Dataset\\train\\y_train.txt')
subjecttrain<-read.table('UCI HAR Dataset\\train\\subject_train.txt')
subjecttest<-read.table('UCI HAR Dataset\\test\\subject_test.txt')

x<-rbind(xtrain, xtest)
y<-rbind( ytrain, ytest)
subject<-rbind(subjecttrain, subjecttest)

m <- rowMeans(x)
s <- apply(x, 1, sd)
activity <- c()

for (i in 1:10299) {
  if (y[[1]][i] == 1) {
    activity <- c(activity, 'WALKING')
  }
  if (y[[1]][i] == 2) {
    activity <- c(activity, 'WALKING_UPSTAIRS')
  }
  if (y[[1]][i] == 3) {
    activity <- c(activity, 'WALKING_DOWNSTAIRS')
  }
  if (y[[1]][i] == 4) {
    activity <- c(activity, 'SITTING')
  }
  if (y[[1]][i] == 5) {
    activity <- c(activity, 'STANDING')
  }
  if (y[[1]][i] == 6) {
    activity <- c(activity, 'LAYING')
  }
}
colnames(subject)<-'subject'
output <- data.frame('mean'=m, 'std'=s, 'activity'=activity, 'subject'= c(subject))
write.table(output,file="data.txt")