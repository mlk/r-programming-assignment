download_if_does_not_exist <- function(fileUrl, fileLocation) {
    
    
    if(!file.exists("./data")){
        dir.create("./data")
    }
    
    if(!file.exists(fileLocation)){
        download.file(fileUrl,destfile=fileLocation,method="curl")
    }
}

unzip_if_required <- function(zipFile, target) {
    if(!file.exists(target)){
        unzip(zipFile, exdir="./data")
    }    
}
