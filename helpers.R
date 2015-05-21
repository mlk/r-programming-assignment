##  Helper functions.


#' If the file specified in FileLocation does not exist then the file is downloaded.
#' NOTE: This assumes that the data_root & download_method variables exists in the parent frame.
#' 
#' @param fileUrl The file to download. 
#' @param fileLocation Where to download the file too.
#' @param ... Passed to "download.file".
download_if_does_not_exist <- function(fileUrl, fileLocation) {
    if(!file.exists(data_root)){
        dir.create(data_root)
    }
    
    if(!file.exists(fileLocation)){
        download.file(fileUrl,destfile=fileLocation,method=download_method)
    }
}

#' If the required packages have not yet been installed, this method installs them.
#' 
#' @param list.of.packages packages to be installed.
install_required_packages <- function(list.of.packages) {
    new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
    if(length(new.packages)) install.packages(new.packages)
}

#' Renames the features labels to more human readable labels.
#' @param the vector of feature labels
#' @return The renamed feature labels.
as_human_readable_feature_labels <- function(feature_names) {
    feature_names <- gsub("fBody", "Frequency.Body", feature_names)
    feature_names <- gsub("tBody", "Time.Body", feature_names)
    feature_names <- gsub("tGravity", "Time.Gravity", feature_names)
    feature_names <- gsub("-mean\\(\\)", ".Mean.", feature_names)
    feature_names <- gsub("-std\\(\\)", ".StandardDeviation.", feature_names)
    feature_names <- gsub("Acc", "Acceleration", feature_names)
    
    feature_names
}

#' Loads and merges the dataset (features, activities and subjects), cuts it down to just the the means and 
#' standard deviation for each measurement and gives the activities nice names.
#' NOTE: Requires the following variables to be set in the parent frame:
#'  * activity_labels - Nice names for the activities.
#'  * feature_labels - Nice names for each of the feature labels. 
#'  * content_root - The parent directory of the unzipped files.
#' @param labal The data set to load. Either "test" or "train".
#' @return The data set.
load_and_tidy_dataset_for <- function(label) {
    # Loads the features, activity IDs and subject IDs. 
    features <- read.table(paste0(content_root, label, "/X_", label, ".txt"), 
                           header = F, col.names = feature_labels$feature)
    activity_ids <- read.table(paste0(content_root, label, "/y_", label, ".txt"), 
                               header = F, col.names = c("activity_id"))
    subject_ids <- read.table(paste0(content_root, label, "/subject_", label, ".txt"), 
                              header = F, col.names = c("subject_id"))
    
    # Strips out all the features bar the means and standard deviations. 
    clean_data_set <- select(features, contains(".Mean."), contains(".StandardDeviation."))
    
    # Adds on the subject IDs.
    clean_data_set$subject_id <- subject_ids$subject_id
    
    # Adds on the nice names for the activities.
    clean_data_set$activity_id <- activity_ids$activity_id
    clean_data_set <- merge(clean_data_set, activity_labels)
    clean_data_set$activity_id <- NULL

    clean_data_set
}
