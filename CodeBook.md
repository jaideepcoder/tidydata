# Code Book

## Variables

* data.frame(xtest)        <- loads data from X_test.txt
* data.frame(ytest)        <- loads data from y_test.txt
* data.frame(xtrain)       <- loads data from X_train.txt
* data.frame(ytrain)       <- loads data from y_train.txt
* data.frame(x)            <- combines xtrain and xtest
* data.frame(y)            <- combines ytrain and ytest
* data.frame(subjecttrain) <- loads data from subject_train.txt
* data.frame(subjecttest)  <- loads data from subject_test.txt
* data.frame(subject)      <- combines subjecttest and subjecttrain
* m                        <- stores row-wise mean of x
* s                        <- stores row-wise standard deviation of x
* i                        <- stores row index
* activity                 <- labeled vector of activities
* data.frame(output)       <- stores processed data

## Data Columns

* mean     <- the mean of the activity
* std      <- the standard deviation of the activity
* activity <- the activity label for the activity
* subject  <- the subject performing the activity  

## Data Processing

* Loads the data files
* Calculates the row-wise mean
* Calculates the row-wise standard deviation
* Computes the label names for particular activity
* Creates a data frame with mean, standard deviation, activity name and subject for each activity
* Writes the data into a text file 'data.txt'
