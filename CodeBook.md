# Overview
A summary of the activity recognition data set built from the recordings of 30 subjects performing basic activities and postural transitions while carrying a waist-mounted smartphone with embedded inertial sensors. This is generated from original data available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

## Codebook

### Features
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Summary

The data is a summary of all the features grouped by subject and activity.

### Columns

| index | column | description | type |
| ----- | ------ | ----------- | ---- |
| 1| subject| The subject performed the activity| number| 
| 2| activity| The name of the activity the subject was performing| character| 
| 3| tBodyAcc-mean()-Y| The mean of all the mean values of all tBodyAcc in the X direction| number| 
| 4| tBodyAcc-mean()-Z| The mean of all the mean values of all tBodyAcc in the Y direction| number| 
| 5| tBodyAcc-std()-X| The mean of all the mean values of all tBodyAcc in the Z direction| number| 
| 6| tBodyAcc-std()-Y| The mean of all the standard deviation of all tBodyAcc in the X direction| number| 
| 7| tBodyAcc-std()-Z| The mean of all the standard deviation of all tBodyAcc in the Y direction| number| 
| 8| tGravityAcc-mean()-X| The mean of all the standard deviation of all tBodyAcc in the Z direction| number| 
| 9| tGravityAcc-mean()-Y| The mean of all the mean values of all tGravityAcc in the X direction| number| 
| 10| tGravityAcc-mean()-Z| The mean of all the mean values of all tGravityAcc in the Y direction| number| 
| 11| tGravityAcc-std()-X| The mean of all the mean values of all tGravityAcc in the Z direction| number| 
| 12| tGravityAcc-std()-Y| The mean of all the standard deviation of all tGravityAcc in the X direction| number| 
| 13| tGravityAcc-std()-Z| The mean of all the standard deviation of all tGravityAcc in the Y direction| number| 
| 14| tBodyAccJerk-mean()-X| The mean of all the standard deviation of all tGravityAcc in the Z direction| number| 
| 15| tBodyAccJerk-mean()-Y| The mean of all the mean values of all tBodyAccJerk in the X direction| number| 
| 16| tBodyAccJerk-mean()-Z| The mean of all the mean values of all tBodyAccJerk in the Y direction| number| 
| 17| tBodyAccJerk-std()-X| The mean of all the mean values of all tBodyAccJerk in the Z direction| number| 
| 18| tBodyAccJerk-std()-Y| The mean of all the standard deviation of all tBodyAccJerk in the X direction| number| 
| 19| tBodyAccJerk-std()-Z| The mean of all the standard deviation of all tBodyAccJerk in the Y direction| number| 
| 20| tBodyGyro-mean()-X| The mean of all the standard deviation of all tBodyAccJerk in the Z direction| number| 
| 21| tBodyGyro-mean()-Y| The mean of all the mean values of all tBodyGyro in the X direction| number| 
| 22| tBodyGyro-mean()-Z| The mean of all the mean values of all tBodyGyro in the Y direction| number| 
| 23| tBodyGyro-std()-X| The mean of all the mean values of all tBodyGyro in the Z direction| number| 
| 24| tBodyGyro-std()-Y| The mean of all the standard deviation of all tBodyGyro in the X direction| number| 
| 25| tBodyGyro-std()-Z| The mean of all the standard deviation of all tBodyGyro in the Y direction| number| 
| 26| tBodyGyroJerk-mean()-X| The mean of all the standard deviation of all tBodyGyro in the Z direction| number| 
| 27| tBodyGyroJerk-mean()-Y| The mean of all the mean values of all tBodyGyroJerk in the X direction| number| 
| 28| tBodyGyroJerk-mean()-Z| The mean of all the mean values of all tBodyGyroJerk in the Y direction| number| 
| 29| tBodyGyroJerk-std()-X| The mean of all the mean values of all tBodyGyroJerk in the Z direction| number| 
| 30| tBodyGyroJerk-std()-Y| The mean of all the standard deviation of all tBodyGyroJerk in the X direction| number| 
| 31| tBodyGyroJerk-std()-Z| The mean of all the standard deviation of all tBodyGyroJerk in the Y direction| number| 
| 32| tBodyAccMag-mean()| The mean of all the standard deviation of all tBodyGyroJerk in the Z direction| number| 
| 33| tBodyAccMag-std()| The mean of all the mean values of all tBodyAccMag| number| 
| 34| tGravityAccMag-mean()| The mean of all the standard deviation of all tBodyAccMag| number| 
| 35| tGravityAccMag-std()| The mean of all the mean values of all tGravityAccMag| number| 
| 36| tBodyAccJerkMag-mean()| The mean of all the standard deviation of all tGravityAccMag| number| 
| 37| tBodyAccJerkMag-std()| The mean of all the mean values of all tBodyAccJerkMag| number| 
| 38| tBodyGyroMag-mean()| The mean of all the standard deviation of all tBodyAccJerkMag| number| 
| 39| tBodyGyroMag-std()| The mean of all the mean values of all tBodyGyroMag| number| 
| 40| tBodyGyroJerkMag-mean()| The mean of all the standard deviation of all tBodyGyroMag| number| 
| 41| tBodyGyroJerkMag-std()| The mean of all the mean values of all tBodyGyroJerkMag| number| 
| 42| fBodyAcc-mean()-X| The mean of all the standard deviation of all tBodyGyroJerkMag| number| 
| 43| fBodyAcc-mean()-Y| The mean of all the mean values of fBodyAcc in the X direction| number| 
| 44| fBodyAcc-mean()-Z| The mean of all the mean values of fBodyAcc in the Y direction| number| 
| 45| fBodyAcc-std()-X| The mean of all the mean values of fBodyAcc in the Z direction| number| 
| 46| fBodyAcc-std()-Y| The mean of all the standard deviation of fBodyAcc in the X direction| number| 
| 47| fBodyAcc-std()-Z| The mean of all the standard deviation of fBodyAcc in the Y direction| number| 
| 48| fBodyAccJerk-mean()-X| The mean of all the standard deviation of fBodyAcc in the Z direction| number| 
| 49| fBodyAccJerk-mean()-Y| The mean of all the mean values of fBodyAccJerk in the X direction| number| 
| 50| fBodyAccJerk-mean()-Z| The mean of all the mean values of fBodyAccJerk in the Y direction| number| 
| 51| fBodyAccJerk-std()-X| The mean of all the mean values of fBodyAccJerk in the Z direction| number| 
| 52| fBodyAccJerk-std()-Y| The mean of all the standard deviation of fBodyAccJerk in the X direction| number| 
| 53| fBodyAccJerk-std()-Z| The mean of all the standard deviation of fBodyAccJerk in the Y direction| number| 
| 54| fBodyGyro-mean()-X| The mean of all the standard deviation of fBodyAccJerk in the Z direction| number| 
| 55| fBodyGyro-mean()-Y| The mean of all the mean values of fBodyGyro in the X direction| number| 
| 56| fBodyGyro-mean()-Z| The mean of all the mean values of fBodyGyro in the Y direction| number| 
| 57| fBodyGyro-std()-X| The mean of all the mean values of fBodyGyro in the Z direction| number| 
| 58| fBodyGyro-std()-Y| The mean of all the standard deviation of fBodyGyro in the X direction| number| 
| 59| fBodyGyro-std()-Z| The mean of all the standard deviation of fBodyGyro in the Y direction| number| 
| 60| fBodyAccMag-mean()| The mean of all the standard deviation of fBodyGyro in the Z direction| number| 
| 61| fBodyAccMag-std()| The mean of all the mean values of fBodyAccMag| number| 
| 62| fBodyBodyAccJerkMag-mean()| The mean of all the standard deviation of fBodyAccMag| number| 
| 63| fBodyBodyAccJerkMag-std()| The mean of all the mean values of fBodyBodyAccJerkMag| number| 
| 64| fBodyBodyGyroMag-mean()| The mean of all the standard deviation of fBodyBodyAccJerkMag| number| 
| 65| fBodyBodyGyroMag-std()| The mean of all the mean values of fBodyBodyGyroMag| number| 
| 66| fBodyBodyGyroJerkMag-mean()| The mean of all the standard deviation of fBodyBodyGyroMag| number| 
| 67| fBodyBodyGyroJerkMag-std()| The mean of all the mean values of fBodyBodyGyroJerkMag| number| 
| 68| fBodyBodyGyroJerkMag| The mean of all the standard deviation of fBodyBodyGyroJerkMag| number| 