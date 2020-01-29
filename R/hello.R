#' Import flights data
#'
#' Data for all flights that departed NYC (JFK, LGA or EWR) in 2013, taken from the nycflights13 package dataset.
#' They're gathered in a data frame and, for our analysis, we're interested in columns:
#' 'dep_delay, arr_delay': departure and arrival delays in minutes; negative times represent early departures/arrivals.
#' 'carrier': two letter carrier abbreviation.
#' The first two columns are particularly useful for the plot and through the last one we can filter American Airlines data.
#'
#' @export
#' @import readr
catch_data <- function(){
  flights <- read.csv("https://query.data.world/s/kho6cpswdlcnjancrj53o4e3wwv365", header=TRUE, stringsAsFactors=FALSE)
  allflights <<- flights
  aa_flights <<- allflights[grepl('AA', allflights$carrier), ]
  return(allflights)
}

#' American Airlines departure and arrival delays plot
#'
#' Scatter plot of American Airlines departure and arrival delays to check if there is some sort of dependence.
#' Once you plot it you can see that as dep_delays increase, also arr_delays increase.
#'
#' @export
#' @import ggplot2
lemmesee <- function(){
  ggplot(data = aa_flights, mapping = aes(x = dep_delay, y = arr_delay)) +
    geom_point()
}

#' American Airlines average arrival delay
#'
#' The function calculate the average arrival delay for American Airlines in 2013.
#'
#' @export
mean_arrdelay <- function(){
  sprintf("For American Airlines, the average arrival delay in 2013 was: %f minutes", mean(aa_flights$arr_delay, na.rm = T))
}

