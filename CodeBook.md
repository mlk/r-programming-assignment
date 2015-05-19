Human Activity Recognition Using Smartphones Summarized Dataset Code Book
========

Assumptions
-----------
The script makes no assumptions and will install any libraries required and will download the data set if it does not exist.

Overview of the data
-----------------
This is a tided and summarized version of the data available from [Human Activity Recognition Using Smartphones Data Set][dataset]. The original description of the data can be found in Appendex 1. The result data set contains just the means of the mean and standard deviation for each subject/activity pair. 

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
|`Time.BodyAcceleration.Mean..X`|Body acceleration in the X axial|time|
|`Time.BodyAcceleration.Mean..Y`|Body acceleration in the Y axial|time|
|`Time.BodyAcceleration.Mean..Z`|Body acceleration in the Z axial|time|
|`Time.GravityAcceleration.Mean..X`|Gravity acceleration in the X axial|time|
|`Time.GravityAcceleration.Mean..Y`|Gravity acceleration in the Y axial|time|
|`Time.GravityAcceleration.Mean..Z`|Gravity acceleration in the Z axial|time|
|`Time.BodyAccelerationJerk.Mean..X`|the body linear acceleration jerk signals in the X axial|time|
|`Time.BodyAccelerationJerk.Mean..Y`|the body linear acceleration jerk signals in the Y axial|time|
|`Time.BodyAccelerationJerk.Mean..Z`|the body linear acceleration jerk signals in the Z axial|time|
|`Time.BodyGyro.Mean..X`|Body gyroscope in the X axial|time|
|`Time.BodyGyro.Mean..Y`|Body gyroscope in the Y axial|time|
|`Time.BodyGyro.Mean..Z`|Body gyroscope in the Z axial|time|
|`Time.BodyGyroJerk.Mean..X`|the body linear gyroscope jerk signals in the X axial|time|
|`Time.BodyGyroJerk.Mean..Y`|the body linear gyroscope jerk signals in the Y axial|time|
|`Time.BodyGyroJerk.Mean..Z`|the body linear gyroscope jerk signals in the Z axial|time|
|`Time.BodyAccelerationMag.Mean.`| fast Fourier Transform (FFT) was applied to body acceleration|time|
|`Time.GravityAccelerationMag.Mean.`| fast Fourier Transform (FFT) was applied to gravity acceleration|time|
|`Time.BodyAccelerationJerkMag.Mean.`| fast Fourier Transform (FFT) was applied to body acceleration jerk signal|time|
|`Time.BodyGyroMag.Mean.`| fast Fourier Transform (FFT) was applied to body gyroscope|time|
|`Time.BodyGyroJerkMag.Mean.`| fast Fourier Transform (FFT) was applied to body gyroscope|time|
|`Frequency.BodyAcceleration.Mean..X`|Body acceleration in the X axial|frequency|
|`Frequency.BodyAcceleration.Mean..Y`|Body acceleration in the Y axial|frequency|
|`Frequency.BodyAcceleration.Mean..Z`|Body acceleration in the Z axial|frequency|
|`Frequency.BodyAccelerationJerk.Mean..X`|the body linear acceleration jerk signals in the X axial|frequency|
|`Frequency.BodyAccelerationJerk.Mean..Y`|the body linear acceleration jerk signals in the Y axial|frequency|
|`Frequency.BodyAccelerationJerk.Mean..Z`|the body linear acceleration jerk signals in the Z axial|frequency|
|`Frequency.BodyGyro.Mean..X`|Body gyroscope in the X axial|frequency|
|`Frequency.BodyGyro.Mean..Y`|Body gyroscope in the Y axial|frequency|
|`Frequency.BodyGyro.Mean..Z`|Body gyroscope in the Z axial|frequency|
|`Frequency.BodyAccelerationMag.Mean.`| fast Fourier Transform (FFT) was applied to body acceleration|frequency|
|`Frequency.BodyBodyAccelerationJerkMag.Mean.`| fast Fourier Transform (FFT) was applied to body acceleration|frequency|
|`Frequency.BodyBodyGyroMag.Mean.`| fast Fourier Transform (FFT) was applied to body gyroscope signal|frequency|
|`Frequency.BodyBodyGyroJerkMag.Mean.`| fast Fourier Transform (FFT) was applied to body gyroscope jerk signal|frequency|
|`angle.Time.BodyAccelerationJerkMean..gravityMean.`||time|

Each of the columns represent the mean of all standard deviation values of the subject while performing the specified activity.

|Column|Description|Domain|
|------|-----------|-----|
|`Time.BodyAcceleration.StandardDeviation..X`|Body acceleration in the X axial|time|
|`Time.BodyAcceleration.StandardDeviation..Y`|Body acceleration in the Y axial|time|
|`Time.BodyAcceleration.StandardDeviation..Z`|Body acceleration in the Z axial|time|
|`Time.GravityAcceleration.StandardDeviation..X`|Gravity acceleration in the X axial|time|
|`Time.GravityAcceleration.StandardDeviation..Y`|Gravity acceleration in the Y axial|time|
|`Time.GravityAcceleration.StandardDeviation..Z`|Gravity acceleration in the Z axial|time|
|`Time.BodyAccelerationJerk.StandardDeviation..X`|the body linear acceleration jerk signals in the X axial|time|
|`Time.BodyAccelerationJerk.StandardDeviation..Y`|the body linear acceleration jerk signals in the Y axial|time|
|`Time.BodyAccelerationJerk.StandardDeviation..Z`|the body linear acceleration jerk signals in the Z axial|time|
|`Time.BodyGyro.StandardDeviation..X`|Body gyroscope in the X axial|time|
|`Time.BodyGyro.StandardDeviation..Y`|Body gyroscope in the Y axial|time|
|`Time.BodyGyro.StandardDeviation..Z`|Body gyroscope in the Z axial|time|
|`Time.BodyGyroJerk.StandardDeviation..X`|the body linear gyroscope jerk signals in the X axial|time|
|`Time.BodyGyroJerk.StandardDeviation..Y`|the body linear gyroscope jerk signals in the Y axial|time|
|`Time.BodyGyroJerk.StandardDeviation..Z`|the body linear gyroscope jerk signals in the Z axial|time|
|`Time.BodyAccelerationMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to body acceleration|time|
|`Time.GravityAccelerationMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to gravity acceleration|time|
|`Time.BodyAccelerationJerkMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to body acceleration jerk signal|time|
|`Time.BodyGyroMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to body gyroscope|time|
|`Time.BodyGyroJerkMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to body gyroscope|time|
|`Frequency.BodyAcceleration.StandardDeviation..X`|Body acceleration in the X axial|frequency|
|`Frequency.BodyAcceleration.StandardDeviation..Y`|Body acceleration in the Y axial|frequency|
|`Frequency.BodyAcceleration.StandardDeviation..Z`|Body acceleration in the Z axial|frequency|
|`Frequency.BodyAccelerationJerk.StandardDeviation..X`|the body linear acceleration jerk signals in the X axial|frequency|
|`Frequency.BodyAccelerationJerk.StandardDeviation..Y`|the body linear acceleration jerk signals in the Y axial|frequency|
|`Frequency.BodyAccelerationJerk.StandardDeviation..Z`|the body linear acceleration jerk signals in the Z axial|frequency|
|`Frequency.BodyGyro.StandardDeviation..X`|Body gyroscope in the X axial|frequency|
|`Frequency.BodyGyro.StandardDeviation..Y`|Body gyroscope in the Y axial|frequency|
|`Frequency.BodyGyro.StandardDeviation..Z`|Body gyroscope in the Z axial|frequency|
|`Frequency.BodyAccelerationMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to body acceleration|frequency|
|`Frequency.BodyBodyAccelerationJerkMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to body acceleration|frequency|
|`Frequency.BodyBodyGyroMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to body gyroscope signal|frequency|
|`Frequency.BodyBodyGyroJerkMag.StandardDeviation.`| fast Fourier Transform (FFT) was applied to body gyroscope jerk signal|frequency|

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

Appendix
========

One: Original Dataset Codebook
---------------------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

Two: Convertion between orginal feature labels and human readable feature labels.
-----------------------------------------------------------

| New Feature Labels                                       | Orginal Feature Labels      | 
|----------------------------------------------------------|-----------------------------| 
| Time.BodyAcceleration.Mean..X                            | tBodyAcc-mean()-X           | 
| Time.BodyAcceleration.Mean..Y                            | tBodyAcc-mean()-Y           | 
| Time.BodyAcceleration.Mean..Z                            | tBodyAcc-mean()-Z           | 
| Time.BodyAcceleration.StandardDeviation..X               | tBodyAcc-std()-X            | 
| Time.BodyAcceleration.StandardDeviation..Y               | tBodyAcc-std()-Y            | 
| Time.BodyAcceleration.StandardDeviation..Z               | tBodyAcc-std()-Z            | 
| Time.GravityAcceleration.Mean..X                         | tGravityAcc-mean()-X        | 
| Time.GravityAcceleration.Mean..Y                         | tGravityAcc-mean()-Y        | 
| Time.GravityAcceleration.Mean..Z                         | tGravityAcc-mean()-Z        | 
| Time.GravityAcceleration.StandardDeviation..X            | tGravityAcc-std()-X         | 
| Time.GravityAcceleration.StandardDeviation..Y            | tGravityAcc-std()-Y         | 
| Time.GravityAcceleration.StandardDeviation..Z            | tGravityAcc-std()-Z         | 
| Time.BodyAccelerationJerk.Mean..X                        | tBodyAccJerk-mean()-X       | 
| Time.BodyAccelerationJerk.Mean..Y                        | tBodyAccJerk-mean()-Y       | 
| Time.BodyAccelerationJerk.Mean..Z                        | tBodyAccJerk-mean()-Z       | 
| Time.BodyAccelerationJerk.StandardDeviation..X           | tBodyAccJerk-std()-X        | 
| Time.BodyAccelerationJerk.StandardDeviation..Y           | tBodyAccJerk-std()-Y        | 
| Time.BodyAccelerationJerk.StandardDeviation..Z           | tBodyAccJerk-std()-Z        | 
| Time.BodyGyro.Mean..X                                    | tBodyGyro-mean()-X          | 
| Time.BodyGyro.Mean..Y                                    | tBodyGyro-mean()-Y          | 
| Time.BodyGyro.Mean..Z                                    | tBodyGyro-mean()-Z          | 
| Time.BodyGyro.StandardDeviation..X                       | tBodyGyro-std()-X           | 
| Time.BodyGyro.StandardDeviation..Y                       | tBodyGyro-std()-Y           | 
| Time.BodyGyro.StandardDeviation..Z                       | tBodyGyro-std()-Z           | 
| Time.BodyGyroJerk.Mean..X                                | tBodyGyroJerk-mean()-X      | 
| Time.BodyGyroJerk.Mean..Y                                | tBodyGyroJerk-mean()-Y      | 
| Time.BodyGyroJerk.Mean..Z                                | tBodyGyroJerk-mean()-Z      | 
| Time.BodyGyroJerk.StandardDeviation..X                   | tBodyGyroJerk-std()-X       | 
| Time.BodyGyroJerk.StandardDeviation..Y                   | tBodyGyroJerk-std()-Y       | 
| Time.BodyGyroJerk.StandardDeviation..Z                   | tBodyGyroJerk-std()-Z       | 
| Time.BodyAccelerationMag.Mean.                           | tBodyAccMag-mean()          | 
| Time.BodyAccelerationMag.StandardDeviation.              | tBodyAccMag-std()           | 
| Time.GravityAccelerationMag.Mean.                        | tGravityAccMag-mean()       | 
| Time.GravityAccelerationMag.StandardDeviation.           | tGravityAccMag-std()        | 
| Time.BodyAccelerationJerkMag.Mean.                       | tBodyAccJerkMag-mean()      | 
| Time.BodyAccelerationJerkMag.StandardDeviation.          | tBodyAccJerkMag-std()       | 
| Time.BodyGyroMag.Mean.                                   | tBodyGyroMag-mean()         | 
| Time.BodyGyroMag.StandardDeviation.                      | tBodyGyroMag-std()          | 
| Time.BodyGyroJerkMag.Mean.                               | tBodyGyroJerkMag-mean()     | 
| Time.BodyGyroJerkMag.StandardDeviation.                  | tBodyGyroJerkMag-std()      | 
| Frequency.BodyAcceleration.Mean..X                       | fBodyAcc-mean()-X           | 
| Frequency.BodyAcceleration.Mean..Y                       | fBodyAcc-mean()-Y           | 
| Frequency.BodyAcceleration.Mean..Z                       | fBodyAcc-mean()-Z           | 
| Frequency.BodyAcceleration.StandardDeviation..X          | fBodyAcc-std()-X            | 
| Frequency.BodyAcceleration.StandardDeviation..Y          | fBodyAcc-std()-Y            | 
| Frequency.BodyAcceleration.StandardDeviation..Z          | fBodyAcc-std()-Z            | 
| Frequency.BodyAccelerationJerk.Mean..X                   | fBodyAccJerk-mean()-X       | 
| Frequency.BodyAccelerationJerk.Mean..Y                   | fBodyAccJerk-mean()-Y       | 
| Frequency.BodyAccelerationJerk.Mean..Z                   | fBodyAccJerk-mean()-Z       | 
| Frequency.BodyAccelerationJerk.StandardDeviation..X      | fBodyAccJerk-std()-X        | 
| Frequency.BodyAccelerationJerk.StandardDeviation..Y      | fBodyAccJerk-std()-Y        | 
| Frequency.BodyAccelerationJerk.StandardDeviation..Z      | fBodyAccJerk-std()-Z        | 
| Frequency.BodyGyro.Mean..X                               | fBodyGyro-mean()-X          | 
| Frequency.BodyGyro.Mean..Y                               | fBodyGyro-mean()-Y          | 
| Frequency.BodyGyro.Mean..Z                               | fBodyGyro-mean()-Z          | 
| Frequency.BodyGyro.StandardDeviation..X                  | fBodyGyro-std()-X           | 
| Frequency.BodyGyro.StandardDeviation..Y                  | fBodyGyro-std()-Y           | 
| Frequency.BodyGyro.StandardDeviation..Z                  | fBodyGyro-std()-Z           | 
| Frequency.BodyAccelerationMag.Mean.                      | fBodyAccMag-mean()          | 
| Frequency.BodyAccelerationMag.StandardDeviation.         | fBodyAccMag-std()           | 
| Frequency.BodyBodyAccelerationJerkMag.Mean.              | fBodyBodyAccJerkMag-mean()  | 
| Frequency.BodyBodyAccelerationJerkMag.StandardDeviation. | fBodyBodyAccJerkMag-std()   | 
| Frequency.BodyBodyGyroMag.Mean.                          | fBodyBodyGyroMag-mean()     | 
| Frequency.BodyBodyGyroMag.StandardDeviation.             | fBodyBodyGyroMag-std()      | 
| Frequency.BodyBodyGyroJerkMag.Mean.                      | fBodyBodyGyroJerkMag-mean() | 
| Frequency.BodyBodyGyroJerkMag.StandardDeviation.         | fBodyBodyGyroJerkMag-std()  | 




[dataset]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
