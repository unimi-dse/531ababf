#' Import data and filter American Airlines flights
#'
#' This function grabs data for all flights that departed NYC (JFK, LGA or EWR) in 2013 and store the data frame to Global Environment.
#' Data taken from the nycflights13 package dataset.
#' run 'flights = catch()' if you want to use the select_carrier() function.
#'
#' @return data.frame
#'
#' @examples
#' catch()
#'
#' @export
catch <- function(){
  flights <- read.csv("https://query.data.world/s/kho6cpswdlcnjancrj53o4e3wwv365", header = TRUE, stringsAsFactors = FALSE)
  return(head(flights))
}



