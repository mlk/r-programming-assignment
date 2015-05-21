# Clear the enviroment to ensure that no left overs from previous executes pollute this run.
rm(list=ls())

## Configuration
data_root = "./data"
uri_source = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file = paste0(data_root, "/dataset.zip")
content_root = paste0(data_root, "/UCI HAR Dataset/")
destination_file = paste0(data_root, "/results.txt")
output_as_long_form = FALSE
clear_data_folder = FALSE
download_method = "curl"

# Load some helper functions
source("helpers.R")

# Optionally clear out the old data folder
if(clear_data_folder && file.exists(data_root)) {
    unlink(data_root, recursive = TRUE)
}

# Optionally install any required packages and load them.
install_required_packages(c("dplyr", "reshape2"))
library(dplyr)
library(reshape2)

# Downloads and unzips the source content if it has not already been downloaded & unzipped
if(!file.exists(content_root)) {
    download_if_does_not_exist(uri_source, zip_file)
    unzip(zip_file, exdir=data_root)
}

# Loads the labels for the features and the activities
feature_labels <- read.table(paste0(content_root, "features.txt"), header = F, col.names = c("column_id", "feature"))
activity_labels <- read.table(paste0(content_root, "activity_labels.txt"), header = F, col.names = c("activity_id", "activity"))

# Renames to a human readble set of feature names. Keep the old feature names to generate the codebook.
feature_labels$feature_old <- feature_labels$feature
feature_labels$feature <- as_human_readable_feature_labels(feature_labels$feature)

# Combines the training and testing datasets
total <- rbind(load_and_tidy_dataset_for("train"),
               load_and_tidy_dataset_for("test"))


# Converts the complete data set into a long form data set using the subject and activity as the keys
long_form <- melt(total, id=c("subject_id", "activity"))

# Generates final tidy data set of contain the mean for each feature by activity/subject.
tidy_data_set <- dcast(long_form, activity + subject_id  ~ variable, mean)


# Optionally converts the tidy data set to long form.
if(output_as_long_form) {
    tidy_data_set <- melt(tidy_data_set, id=c("subject_id", "activity"))
}

# Write out the tidy data.
write.table(tidy_data_set, destination_file, row.name=FALSE)

# Clear the enviroment of variables no longer required.
rm(list=c("activity_labels", "feature_labels", "long_form"))
