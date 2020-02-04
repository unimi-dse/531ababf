#' Average arrival delay for selected carrier
#'
#' Before running this function run 'flights = catch()'.
#' Use as argument of this function the IATA carrier code you can find in the flights data frame in the global environment.
#' If you don't know the corresponding airline company, search it on google (e.g:'B6 IATA code')
#'
#' @param id IATA character
#'
#' @return average delays
#'
#' @examples
#' select_carrier("B6")
#'
#' @export
select_carrier <- function(id){
  carrier <- flights[flights$carrier == id, ]
  arrdelay <- carrier[carrier$arr_delay >= 0, ] # negative time is not delay
  x <- c("Average arrival delay for selected carrier" = mean(arrdelay$arr_delay, na.rm = T))
  return(x)
}
