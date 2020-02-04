#' Interactive interface
#'
#' Runs an interactive interface where you can explore data used in this package's functions.
#'
#' @return shiny app
#'
#' @export
runEXP <- function(){

  shiny::runApp(system.file("shiny/runEXP", package = "flightsanalysis"))

}
