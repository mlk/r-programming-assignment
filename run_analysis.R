rm(list=ls())

library(dplyr)
source("helpers.R")

load_dataset <- function(rootFolder, label, activities, feature_labels) {
    training_data <- read.table(paste(rootFolder, label, "/X_", label, ".txt", sep=""), 
                                header = F, col.names = feature_labels$feature_name)
    training_labels <- read.table(paste(rootFolder, label, "/y_", label, ".txt", sep=""), 
                                  header = F, col.names = c("activity_id"))
    training_subjects <- read.table(paste(rootFolder, label, "/subject_", label, ".txt", sep=""), 
                                    header = F, col.names = c("subject_id"))
    
    meansAndStd <- select(training_data, contains("mean"), contains("std"))
    meansAndStd$activities <- merge(training_labels, activities)$activity_name
    meansAndStd$subject_id <- training_subjects$subject_id
    
    meansAndStd
}


download_if_does_not_exist("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./data/dataset.zip")
unzip_if_required("./data/dataset.zip", "./data/UCI HAR Dataset")

activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = F, col.names = c("activity_id", "activity_name"))
feature_labels <- read.table("./data/UCI HAR Dataset/features.txt", header = F, col.names = c("column_id", "feature_name"))

training <- load_dataset("./data/UCI HAR Dataset/", "train", activities, feature_labels)
test <- load_dataset("./data/UCI HAR Dataset/", "test", activities, feature_labels)

total <- rbind(training, test)
