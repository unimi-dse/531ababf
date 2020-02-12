#' Interactive interface
#'
#' Runs an interactive interface where you can explore data used in this package.
#' The shiny app might need a bit to show the plots.
#'
#' @return shiny app
#'
#' @export
runEXP <- function(){

  shiny::runApp(system.file("shiny/runEXP", package = "flightsanalysis"))

}
