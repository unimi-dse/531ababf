#' Import data and filter American Airlines flights
#'
#' This function grabs data for all flights that departed NYC (JFK, LGA or EWR) in 2013.
#' Data taken from the nycflights13 package dataset.
#'
#' @return data.frame
#'
#' @examples
#' catch()
#'
#' @export
catch <- function(){
  flights <- read.csv("https://query.data.world/s/kho6cpswdlcnjancrj53o4e3wwv365", header = TRUE, stringsAsFactors = FALSE)
  return(flights)
}



