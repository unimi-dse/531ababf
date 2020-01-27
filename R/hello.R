#' Importing data
#' @title Importing flights data from the nycflights13 dataset
#' @description Reading from the csv file and storing the data frame
#' in the variable named 'flights'
#' @export
catch_data <- function(){
flights <- read_csv("Downloads/flights.csv")
}
#' Plotting American Airlines departure and arrival delay
#' @title Scatter plot of American Airlines departure and arrival delay
#' @description Plotting AA departure and arrival delay
#' to check if there is some sort of dependence, and as we can see
#' as dep_delays increase, also arr_delays increase.
#' @export
lemmesee <- function(){
all_aa_flights <- flights %>%
  filter(carrier == "AA")

ggplot(data = all_aa_flights, mapping = aes(x = dep_delay, y = arr_delay)) +
  geom_point()
}
#' Calculating the mean arrival delay for American Airlines in 2013
#' @title American Airlines mean arrival delay
#' @description The function calculate the mean arrival delay for
#' American Airlines in 2013
#' @export
mean_aa <- function(){
sprintf("For American Airlines, the mean arrival delay in 2013 was: %f", mean(all_aa_flights$arr_delay, na.rm = T))
}

