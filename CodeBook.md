Human Activity Recognition Using Smartphones Summarized Dataset Code Book
========

Assumptions
-----------
The script makes no assumptions and will install any libraries required and will download the data set if required.

Overview of the data
-----------------
This is a tided and summarized version of the data available from [Human Activity Recognition Using Smartphones Data Set][dataset]. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Then the means of the mean and standard deviation for each subject/activity pair was then calculated. 

### Columns

This document describes the `results.txt` file created by the `run_analysis.R` application. The `run_analysis.R` application can be executed in two modes - long form or short form. Both will contain the following variables:

|Column|Description|
|------|------------|
|`subject_id`|the subject for which this row. This is between 1 and 30|
|`activitY`|the activity name, one of `WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING`|

#### Long Form

In long form each of the observations is in a different row. The data frame contains the following two columns.

|Column|Description|
|------|------------|
|`variable`|the name of the variable. See "short form" for a description of each variable|
|`value`|the value of the variable. See below for the units.|

#### Short Form


Each of the columns represent the mean of all mean values of the subject while performing the specified activity.

|Column|Description|Domain|
|------|-----------|-----|
|`tBodyAcc.mean...X`|Body acceleration in the X axial|time|
|`tBodyAcc.mean...Y`|Body acceleration in the Y axial|time|
|`tBodyAcc.mean...Z`|Body acceleration in the Z axial|time|
|`tGravityAcc.mean...X`|Gravity acceleration in the X axial|time|
|`tGravityAcc.mean...Y`|Gravity acceleration in the Y axial|time|
|`tGravityAcc.mean...Z`|Gravity acceleration in the Z axial|time|
|`tBodyAccJerk.mean...X`|the body linear acceleration jerk signals in the X axial|time|
|`tBodyAccJerk.mean...Y`|the body linear acceleration jerk signals in the Y axial|time|
|`tBodyAccJerk.mean...Z`|the body linear acceleration jerk signals in the Z axial|time|
|`tBodyGyro.mean...X`|Body gyroscope in the X axial|time|
|`tBodyGyro.mean...Y`|Body gyroscope in the Y axial|time|
|`tBodyGyro.mean...Z`|Body gyroscope in the Z axial|time|
|`tBodyGyroJerk.mean...X`|the body linear gyroscope jerk signals in the X axial|time|
|`tBodyGyroJerk.mean...Y`|the body linear gyroscope jerk signals in the Y axial|time|
|`tBodyGyroJerk.mean...Z`|the body linear gyroscope jerk signals in the Z axial|time|
|`tBodyAccMag.mean..`| fast Fourier Transform (FFT) was applied to body acceleration|time|
|`tGravityAccMag.mean..`| fast Fourier Transform (FFT) was applied to gravity acceleration|time|
|`tBodyAccJerkMag.mean..`| fast Fourier Transform (FFT) was applied to body acceleration jerk signal|time|
|`tBodyGyroMag.mean..`| fast Fourier Transform (FFT) was applied to body gyroscope|time|
|`tBodyGyroJerkMag.mean..`| fast Fourier Transform (FFT) was applied to body gyroscope|time|
|`fBodyAcc.mean...X`|Body acceleration in the X axial|frequency|
|`fBodyAcc.mean...Y`|Body acceleration in the Y axial|frequency|
|`fBodyAcc.mean...Z`|Body acceleration in the Z axial|frequency|
|`fBodyAccJerk.mean...X`|the body linear acceleration jerk signals in the X axial|frequency|
|`fBodyAccJerk.mean...Y`|the body linear acceleration jerk signals in the Y axial|frequency|
|`fBodyAccJerk.mean...Z`|the body linear acceleration jerk signals in the Z axial|frequency|
|`fBodyGyro.mean...X`|Body gyroscope in the X axial|frequency|
|`fBodyGyro.mean...Y`|Body gyroscope in the Y axial|frequency|
|`fBodyGyro.mean...Z`|Body gyroscope in the Z axial|frequency|
|`fBodyAccMag.mean..`| fast Fourier Transform (FFT) was applied to body acceleration|frequency|
|`fBodyBodyAccJerkMag.mean..`| fast Fourier Transform (FFT) was applied to body acceleration|frequency|
|`fBodyBodyGyroMag.mean..`| fast Fourier Transform (FFT) was applied to body gyroscope signal|frequency|
|`fBodyBodyGyroJerkMag.mean..`| fast Fourier Transform (FFT) was applied to body gyroscope jerk signal|frequency|
|`angle.tBodyAccJerkMean..gravityMean.`||time|

Each of the columns represent the mean of all standard deviation values of the subject while performing the specified activity.

|Column|Description|Domain|
|------|-----------|-----|
|`tBodyAcc.std...X`|Body acceleration in the X axial|time|
|`tBodyAcc.std...Y`|Body acceleration in the Y axial|time|
|`tBodyAcc.std...Z`|Body acceleration in the Z axial|time|
|`tGravityAcc.std...X`|Gravity acceleration in the X axial|time|
|`tGravityAcc.std...Y`|Gravity acceleration in the Y axial|time|
|`tGravityAcc.std...Z`|Gravity acceleration in the Z axial|time|
|`tBodyAccJerk.std...X`|the body linear acceleration jerk signals in the X axial|time|
|`tBodyAccJerk.std...Y`|the body linear acceleration jerk signals in the Y axial|time|
|`tBodyAccJerk.std...Z`|the body linear acceleration jerk signals in the Z axial|time|
|`tBodyGyro.std...X`|Body gyroscope in the X axial|time|
|`tBodyGyro.std...Y`|Body gyroscope in the Y axial|time|
|`tBodyGyro.std...Z`|Body gyroscope in the Z axial|time|
|`tBodyGyroJerk.std...X`|the body linear gyroscope jerk signals in the X axial|time|
|`tBodyGyroJerk.std...Y`|the body linear gyroscope jerk signals in the Y axial|time|
|`tBodyGyroJerk.std...Z`|the body linear gyroscope jerk signals in the Z axial|time|
|`tBodyAccMag.std..`| fast Fourier Transform (FFT) was applied to body acceleration|time|
|`tGravityAccMag.std..`| fast Fourier Transform (FFT) was applied to gravity acceleration|time|
|`tBodyAccJerkMag.std..`| fast Fourier Transform (FFT) was applied to body acceleration jerk signal|time|
|`tBodyGyroMag.std..`| fast Fourier Transform (FFT) was applied to body gyroscope|time|
|`tBodyGyroJerkMag.std..`| fast Fourier Transform (FFT) was applied to body gyroscope|time|
|`fBodyAcc.std...X`|Body acceleration in the X axial|frequency|
|`fBodyAcc.std...Y`|Body acceleration in the Y axial|frequency|
|`fBodyAcc.std...Z`|Body acceleration in the Z axial|frequency|
|`fBodyAccJerk.std...X`|the body linear acceleration jerk signals in the X axial|frequency|
|`fBodyAccJerk.std...Y`|the body linear acceleration jerk signals in the Y axial|frequency|
|`fBodyAccJerk.std...Z`|the body linear acceleration jerk signals in the Z axial|frequency|
|`fBodyGyro.std...X`|Body gyroscope in the X axial|frequency|
|`fBodyGyro.std...Y`|Body gyroscope in the Y axial|frequency|
|`fBodyGyro.std...Z`|Body gyroscope in the Z axial|frequency|
|`fBodyAccMag.std..`| fast Fourier Transform (FFT) was applied to body acceleration|frequency|
|`fBodyBodyAccJerkMag.std..`| fast Fourier Transform (FFT) was applied to body acceleration|frequency|
|`fBodyBodyGyroMag.std..`| fast Fourier Transform (FFT) was applied to body gyroscope signal|frequency|
|`fBodyBodyGyroJerkMag.std..`| fast Fourier Transform (FFT) was applied to body gyroscope jerk signal|frequency|

Data Transformation
-------------------
The data is loaded from the following sources:

|file|Description|
|----|-----------|
|`features.txt`|Nice names for the features.|
|`activity_labels.txt`|Nice names for the activities|
|`train/X_train.txt`|the features for the training dataset.|
|`train/y_train.txt`|the activity IDs for each row in the training dataset.|
|`train/subject_train.txt`|the subject IDs for each row in the training dataset.|
|`test/X_test.txt`|the features for the test dataset.|
|`test/y_test.txt`|the activity IDs for each row in the test dataset.|
|`test/subject_test.txt`|the subject IDs for each row in the test dataset.|

The data from the train folder is merged together then the activities are linked to the nice names specified in `activity_labels.txt`. From this only the features which contain "mean" or "std" are extracted.

The data from the test folder is merged together then the activities are linked to the nice names specified in `activity_labels.txt`. From this only the features which contain "mean" or "std" are extracted.

The two data sets are combined.

The mean for each feature per activity/subject pair is then calculated.


[dataset]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
