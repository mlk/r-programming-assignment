# Comment overload I know. 


# Clear the enviroment to ensure that no left overs from previous executes pollute this run.
rm(list=ls())

# Load some helper functions
source("helpers.R")

# Optionally install any required packages and load them.
install_required_packages(c("dplyr", "reshape2"))
library(dplyr)
library(reshape2)


## Configuration
uri_source = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file = "./data/dataset.zip"
content_root = "./data/UCI HAR Dataset/"
destination_file = "./data/results.txt"

#' 
#'
load_clean_dataset <- function(label) {
    raw_data <- read.table(to_content_path(paste0(label, "/X_", label, ".txt")), 
                                header = F, col.names = feature_labels$feature_name)
    activity_ids <- read.table(to_content_path(paste0(label, "/y_", label, ".txt")), 
                                  header = F, col.names = c("activity_id"))
    subject_ids <- read.table(to_content_path(paste0(label, "/subject_", label, ".txt")), 
                                    header = F, col.names = c("subject_id"))
    
    meansAndStd <- select(raw_data, contains("mean"), contains("std"))
    meansAndStd$activities <- merge(activity_ids, activities)$activity_name
    meansAndStd$subject_id <- subject_ids$subject_id
    
    meansAndStd
}


download_if_does_not_exist(uri_source, zip_file)
unzip_if_required(zip_file, content_root)

activities <- read.table(to_content_path("activity_labels.txt"), header = F, col.names = c("activity_id", "activity_name"))
feature_labels <- read.table(to_content_path("features.txt"), header = F, col.names = c("column_id", "feature_name"))

total <- rbind(load_clean_dataset("train"),
               load_clean_dataset("test"))


tidy_data_set <- dcast(melt(total, id=c("subject_id", "activities")), activities + subject_id  ~ variable, mean)

write.table(tidy_data_set, destination_file)
