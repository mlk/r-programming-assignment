##  Helper functions.


#' If the file specified in FileLocation does not exist then the file is downloaded.
#' @param fileUrl The file to download. 
#' @param fileLocation Where to download the file too.
#' @param ... Passed to "download.file".
download_if_does_not_exist <- function(fileUrl, fileLocation, ...) {
    if(!file.exists("./data")){
        dir.create("./data")
    }
    
    if(!file.exists(fileLocation)){
        download.file(fileUrl,destfile=fileLocation,method="curl", ...)
    }
}

#' If the unziped content specified does not exist then the zip file is unziped to "./data".
#' @param zipFile The zip file to unzip
#' @param target A file or folder assumed to exist within the zip file once unziped to 
unzip_if_required <- function(zipFile, target) {
    if(!file.exists(target)){
        unzip(zipFile, exdir="./data")
    }    
}


#' If the required packages have not yet been installed, this method installs them.
#' 
#' @param list.of.packages packages to be installed.
install_required_packages <- function(list.of.packages) {
    new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
    if(length(new.packages)) install.packages(new.packages)
}

#' Adds the content root to a file.
#' NOTE: Assumes "content_root" exists within the current enviroment.
#' @param filename The file name.
to_content_path <- function(filename) {
    paste0(content_root, filename)
}



#' Loads and merges the dataset (features, activities and subjects), cuts it down to just the the means and 
#' standard deviation for each measurement and gives the activities nice names.
#' NOTE: Requires the following variables to be set in the parent frame:
#'  * activity_labels - Nice names for the activities.
#'  * feature_labels - Nice names for each of the feature labels. 
#' @param labal The data set to load. Either "test" or "train".
#' @return The data set.
load_and_clean_dataset_for <- function(label) {
    # Loads the features, activity IDs and subject IDs. 
    features <- read.table(to_content_path(paste0(label, "/X_", label, ".txt")), 
                           header = F, col.names = feature_labels$feature_name)
    activity_ids <- read.table(to_content_path(paste0(label, "/y_", label, ".txt")), 
                               header = F, col.names = c("activity_id"))
    subject_ids <- read.table(to_content_path(paste0(label, "/subject_", label, ".txt")), 
                              header = F, col.names = c("subject_id"))
    
    # Strips out all the features bar the means and standard deviations. 
    clean_data_set <- select(features, contains("mean.."), contains("std.."))
    
    # Adds on the subject IDs.
    clean_data_set$subject_id <- subject_ids$subject_id
    
    # Adds on the nice names for the activities.
    clean_data_set$activity_id <- activity_ids$activity_id
    clean_data_set <- merge(clean_data_set, activity_labels)
    clean_data_set$activity_id <- NULL

    clean_data_set
}