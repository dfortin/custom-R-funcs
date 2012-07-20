#' Sources all R files in the directory
#'
#' Sources all R and S files in the directory specified by the path variable
#'
#' @param path path of the directory
#' @param trace logical If equal to TRUE sourced files will be printed to screen
#' @param ... arguments passed to source()
sourceDir <-  function(path, trace = TRUE, ...) {
    for (nm in list.files(path, pattern = "\\.[RrSsQq]$")) {
       if(trace) cat(nm,":")           
       source(file.path(path, nm), ...)
       if(trace) cat("\n")
    }
}
 


