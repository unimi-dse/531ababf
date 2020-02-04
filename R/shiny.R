#' Interactive interface
#'
#' Runs an interactive interface where you can explore data used in this package's functions.
#' To speed it up you can run first the command 'flights = catch()', if not already done.
#'
#' @return shiny app
#'
#' @export
runEXP <- function(){

  shiny::runApp(system.file("shiny/runEXP", package = "flightsanalysis"))

}
