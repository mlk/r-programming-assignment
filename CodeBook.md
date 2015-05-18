Human Activity Recognition Using Smartphones Summarized Dataset Code Book
========

Overview
--------
This is a tided and summarized version of the data available from [Human Activity Recognition Using Smartphones Data Set][dataset]


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Then the means of the mean and standard deviation for each subject/activity pair was then calculated. 

Columns
-------

This document describes the `results.txt` file created by the `run_analysis.R` application. The `run_analysis.R` application can be executed in two modes - long form or short form. Both will contain the following variables:

|Column|Description|
|------|------------|
|subject_id|The subject for which this row. This is between 1 and 30|
|activity|The activity name, one of `WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING`|

### Long Form

In long form each of the observations is in a different row. The data frame contains the following two columns.

|Column|Description|
|------|------------|
|variable|The name of the variable. See "short form" for a description of each variable|
|value|The value of the variable. See below for the units.|

### Short Form


Each of the columns represent the mean of all mean values of the subject while performing the specified activity.

|Column|Description|Domain|
|------|-----------|-----|
|tBodyAcc.mean...X|Body acceleration in the X axial|Time|
|tBodyAcc.mean...Y|Body acceleration in the Y axial|Time|
|tBodyAcc.mean...Z|Body acceleration in the Z axial|Time|
|tGravityAcc.mean...X|Gravity acceleration in the X axial|Time|
|tGravityAcc.mean...Y|Gravity acceleration in the Y axial|Time|
|tGravityAcc.mean...Z|Gravity acceleration in the Z axial|Time|
|tBodyAccJerk.mean...X|the body linear acceleration jerk signals in the X axial|Time|
|tBodyAccJerk.mean...Y|the body linear acceleration jerk signals in the Y axial|Time|
|tBodyAccJerk.mean...Z|the body linear acceleration jerk signals in the Z axial|Time|
|tBodyGyro.mean...X|Body gyroscope in the X axial|Time|
|tBodyGyro.mean...Y|Body gyroscope in the Y axial|Time|
|tBodyGyro.mean...Z|Body gyroscope in the Z axial|Time|
|tBodyGyroJerk.mean...X|the body linear gyroscope jerk signals in the X axial|Time|
|tBodyGyroJerk.mean...Y|the body linear gyroscope jerk signals in the Y axial|Time|
|tBodyGyroJerk.mean...Z|the body linear gyroscope jerk signals in the Z axial|Time|
|tBodyAccMag.mean..|Fast Fourier Transform (FFT) was applied to body acceleration|Time|
|tGravityAccMag.mean..|Fast Fourier Transform (FFT) was applied to gravity acceleration|Time|
|tBodyAccJerkMag.mean..|Fast Fourier Transform (FFT) was applied to body acceleration jerk signal|Time|
|tBodyGyroMag.mean..|Fast Fourier Transform (FFT) was applied to body gyroscope|Time|
|tBodyGyroJerkMag.mean..|Fast Fourier Transform (FFT) was applied to body gyroscope|Time|
|fBodyAcc.mean...X|Body acceleration in the X axial|Frequency|
|fBodyAcc.mean...Y|Body acceleration in the Y axial|Frequency|
|fBodyAcc.mean...Z|Body acceleration in the Z axial|Frequency|
|fBodyAccJerk.mean...X|the body linear acceleration jerk signals in the X axial|Frequency|
|fBodyAccJerk.mean...Y|the body linear acceleration jerk signals in the Y axial|Frequency|
|fBodyAccJerk.mean...Z|the body linear acceleration jerk signals in the Z axial|Frequency|
|fBodyGyro.mean...X|Body gyroscope in the X axial|Frequency|
|fBodyGyro.mean...Y|Body gyroscope in the Y axial|Frequency|
|fBodyGyro.mean...Z|Body gyroscope in the Z axial|Frequency|
|fBodyAccMag.mean..|Fast Fourier Transform (FFT) was applied to body acceleration|Frequency|
|fBodyBodyAccJerkMag.mean..|Fast Fourier Transform (FFT) was applied to body acceleration|Frequency|
|fBodyBodyGyroMag.mean..|Fast Fourier Transform (FFT) was applied to body gyroscope signal|Frequency|
|fBodyBodyGyroJerkMag.mean..|Fast Fourier Transform (FFT) was applied to body gyroscope jerk signal|Frequency|
|angle.tBodyAccJerkMean..gravityMean.||time|

Each of the columns represent the mean of all standard deviation values of the subject while performing the specified activity.

|Column|Description|Domain|
|------|-----------|-----|
|tBodyAcc.std...X|Body acceleration in the X axial|Time|
|tBodyAcc.std...Y|Body acceleration in the Y axial|Time|
|tBodyAcc.std...Z|Body acceleration in the Z axial|Time|
|tGravityAcc.std...X|Gravity acceleration in the X axial|Time|
|tGravityAcc.std...Y|Gravity acceleration in the Y axial|Time|
|tGravityAcc.std...Z|Gravity acceleration in the Z axial|Time|
|tBodyAccJerk.std...X|the body linear acceleration jerk signals in the X axial|Time|
|tBodyAccJerk.std...Y|the body linear acceleration jerk signals in the Y axial|Time|
|tBodyAccJerk.std...Z|the body linear acceleration jerk signals in the Z axial|Time|
|tBodyGyro.std...X|Body gyroscope in the X axial|Time|
|tBodyGyro.std...Y|Body gyroscope in the Y axial|Time|
|tBodyGyro.std...Z|Body gyroscope in the Z axial|Time|
|tBodyGyroJerk.std...X|the body linear gyroscope jerk signals in the X axial|Time|
|tBodyGyroJerk.std...Y|the body linear gyroscope jerk signals in the Y axial|Time|
|tBodyGyroJerk.std...Z|the body linear gyroscope jerk signals in the Z axial|Time|
|tBodyAccMag.std..|Fast Fourier Transform (FFT) was applied to body acceleration|Time|
|tGravityAccMag.std..|Fast Fourier Transform (FFT) was applied to gravity acceleration|Time|
|tBodyAccJerkMag.std..|Fast Fourier Transform (FFT) was applied to body acceleration jerk signal|Time|
|tBodyGyroMag.std..|Fast Fourier Transform (FFT) was applied to body gyroscope|Time|
|tBodyGyroJerkMag.std..|Fast Fourier Transform (FFT) was applied to body gyroscope|Time|
|fBodyAcc.std...X|Body acceleration in the X axial|Frequency|
|fBodyAcc.std...Y|Body acceleration in the Y axial|Frequency|
|fBodyAcc.std...Z|Body acceleration in the Z axial|Frequency|
|fBodyAccJerk.std...X|the body linear acceleration jerk signals in the X axial|Frequency|
|fBodyAccJerk.std...Y|the body linear acceleration jerk signals in the Y axial|Frequency|
|fBodyAccJerk.std...Z|the body linear acceleration jerk signals in the Z axial|Frequency|
|fBodyGyro.std...X|Body gyroscope in the X axial|Frequency|
|fBodyGyro.std...Y|Body gyroscope in the Y axial|Frequency|
|fBodyGyro.std...Z|Body gyroscope in the Z axial|Frequency|
|fBodyAccMag.std..|Fast Fourier Transform (FFT) was applied to body acceleration|Frequency|
|fBodyBodyAccJerkMag.std..|Fast Fourier Transform (FFT) was applied to body acceleration|Frequency|
|fBodyBodyGyroMag.std..|Fast Fourier Transform (FFT) was applied to body gyroscope signal|Frequency|
|fBodyBodyGyroJerkMag.std..|Fast Fourier Transform (FFT) was applied to body gyroscope jerk signal|Frequency|


[dataset]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
