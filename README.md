R programming assignment for Getting and Cleaning Data
======================================================

The repo contains two R files
 
 * `run_analysis.R` is the application which builds up the tidy data set. 
 * `helpers.R` is some helper methods which hopefully make `run_analysis.R` easier to follow.
 
and two markdown files

 * `README.md` is this one. Containing lots of fun information.
 * `CodeBook.md` describes the table created by `run_analysis.R`.

Requirements
------------
The application was developed using R 3.1.3 with the following packages aviable.

|Library   |Version|
|----------|-------|
|`dplyr`   |0.4.1  |
|`reshape2`|1.4.1  |

The required packages will be installed if required by the script. While it was developed using RStudio it will run happily in the R Console.

Execution
---------
To execute the application simply set the working directory to where `run_analysis.R` is checked out and execute `source("run_analysis.R")`. While the requirements  specify that "the Samsung data is in your working directory", this script assumes that it is in the `./data` directory¹. This script will download and unzip the data should it not exist.

If you wish to run it without using the cached version of the downloaded zip file run then set the `clear_data_folder` configuration value to `TRUE` before executing.


Configuration
--------------

The configuration block allows for the user of the script to set up a few variables. 

|Variable             |Description|
|---------------------|-----------|
|`data_root`          |The root folder of the data.|
|`uri_source`         |Where we should download the source zip file from.|
|`zip_file`           |The filename of the downloaded zip file. |
|`content_root`       |The folder within the unzipped zip file containing the content we wish to summarize|
|`destination_file`   |The location of the summarized data|
|`output_as_long_form`|Should the output be in long form or short form|
|`clear_data_folder`  |Deletes the cached version of the content before downloading afreash|

How it works
------------
 * Downloads and unzips the source content. This will be skipped if they already exist.
 * Loads the labels for the features and the activities.
 * Loads the train & test data sets
    * Loads the features, activity ids and subject IDs    
    * Filters out only the features we are interested in.
    * Adds the subject and activities IDs to the features.
    * Merges to the activity labels to give the activities nice names
    * Drops the activity IDs from the data frame.
 * Combines the train and test data sets.
 * Converts the complete data set into a long form data set using the subject and activity as the keys
 * Generates final tidy data set of contain the mean for each feature by activity/subject.
 * Optionally converts to long form.
 * Write out the tidy data.
 
The application makes use of of the following files from the source zip file.
 
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

 
 
Footnotes
---------

1. Having the data dumped into the same folder as the executable is I feel a little dirty and I perfer a clean seperation between data and code. Thus the application uses a "data" directory to hold the downloaded files. If you disagree with this you can change `data_root` to be `"."` and it will execute as specified in the requirements.
DO NOT change `data_root` to be `"."` and use the `clear_data_folder = TRUE` feature. Bad things will happen.
