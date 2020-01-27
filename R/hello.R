#' Importing data
#' @title Importing flights data from the nycflights13 dataset
#' @description Reading from the csv file, storing the dataframes in the variables named 'allflights' and 'all_aa_flights' and showing the first few lines of the 'allflights' dataframe.
#' @export
#' @import readr
catch_data <- function(){
  flights <- read.csv("https://query.data.world/s/kho6cpswdlcnjancrj53o4e3wwv365", header=TRUE, stringsAsFactors=FALSE)
  allflights <<- flights
  all_aa_flights <<- allflights[grepl('AA', allflights$carrier), ]
  return(allflights)
}

#' Plotting American Airlines departure and arrival delay
#' @title Scatter plot of American Airlines departure and arrival delay
#' @description Plotting American Airlines departure and arrival delays to check if there is some sort of dependence. As we can see as dep_delays increase, also arr_delays increase.
#' @export
#' @import ggplot2
lemmesee <- function(){
  ggplot(data = all_aa_flights, mapping = aes(x = dep_delay, y = arr_delay)) +
    geom_point()
}

#' Calculating the mean arrival delay for American Airlines in 2013
#' @title American Airlines mean arrival delay
#' @description The function calculate the mean arrival delay for American Airlines in 2013.
#' @export
mean_arrdelay <- function(){
  sprintf("For American Airlines, the mean arrival delay in 2013 was: %f minutes", mean(all_aa_flights$arr_delay, na.rm = T))
}

