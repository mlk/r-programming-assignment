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
