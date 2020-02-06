#' Interactive interface
#'
#' Runs an interactive interface where you can explore data used in this package.
#' To speed the process up, you can run first the command 'flights = catch()', if not already done.
#'
#' @return shiny app
#'
#' @export
runEXP <- function(){

  shiny::runApp(system.file("shiny/runEXP", package = "flightsanalysis"))

}
