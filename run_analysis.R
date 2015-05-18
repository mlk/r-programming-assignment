# Clear the enviroment to ensure that no left overs from previous executes pollute this run.
rm(list=ls())

## Configuration
uri_source = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file = "./data/dataset.zip"
content_root = "./data/UCI HAR Dataset/"
destination_file = "./data/results.txt"
output_as_long_form = FALSE
clear_data_folder = FALSE

# Optionally clear out the old data folder
if(clear_data_folder && file.exists("./data")) {
    unlink("./data", recursive = TRUE)
}


# Load some helper functions
source("helpers.R")

# Optionally install any required packages and load them.
install_required_packages(c("dplyr", "reshape2"))
library(dplyr)
library(reshape2)

# Downloads and unzips the source content if it has not already been downloaded & unzipped
download_if_does_not_exist(uri_source, zip_file)
unzip_if_required(zip_file, content_root)

# Loads the labels for the features and the activities
feature_labels <- read.table(to_content_path("features.txt"), header = F, col.names = c("column_id", "feature_name"))
activity_labels <- read.table(to_content_path("activity_labels.txt"), header = F, col.names = c("activity_id", "activity"))

# Combines the training and testing datasets
total <- rbind(load_and_clean_dataset_for("train"),
               load_and_clean_dataset_for("test"))


# Converts the complete data set into a long form data set using the subject and activity as the keys
long_form <- melt(total, id=c("subject_id", "activity"))

# Generates final tidy data set of contain the mean for each feature by activity/subject.
tidy_data_set <- dcast(long_form, activity + subject_id  ~ variable, mean)


# Optionally converts to long form.
if(output_as_long_form) {
    tidy_data_set <- melt(tidy_data_set, id=c("subject_id", "activity"))
}

# Write out the tiday data.
write.table(tidy_data_set, destination_file, row.name=FALSE)
