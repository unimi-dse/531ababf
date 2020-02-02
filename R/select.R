#' Average arrival delay for selected carrier
#'
#' Before running this function run the catch() one.
#' Use as argument of this function the IATA carrier code you can find in the flights data frame in the global environment.
#' If you don't know the corresponding airline company, search it on google (e.g:'B6 IATA code')
#'
#' @param ids IATA character
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
  s <- sprintf("For the selected carrier, the average arrival delay in 2013 was: %f minutes", mean(arrdelay$arr_delay, na.rm = T))
  return(s)
}
