#' Import data and filter American Airlines flights
#'
#' Data for all flights that departed NYC (JFK, LGA or EWR) in 2013, taken from the nycflights13 package dataset.
#' You can look at American Airlines data frame by clicking on it in Global Environment.
#' For our analysis, we're interested in columns:
#' * 'dep_delay, arr_delay': departure and arrival delays in minutes; negative times represent early departures/arrivals.
#' * 'carrier': two letter carrier abbreviation.
#' @md
#'
#' @export
catch <- function(){
  flights <- read.csv("https://query.data.world/s/kho6cpswdlcnjancrj53o4e3wwv365", header = TRUE, stringsAsFactors = FALSE)
  aa_flights <<- flights[grepl('AA', flights$carrier), ]
  return(flights)
}

#' American Airlines departure and arrival delays plot
#'
#' Scatter plot of American Airlines departure and arrival delays to check if there is dependence.
#' Some values are missing so they won't be plotted, you will get a warning message.
#' Once you plot it you can see that, as expected, as departure delay increase, also arrival delay increase.
#'
#' @export
obs <- function(){
  ggplot(aa_flights, aes(x = dep_delay, y = arr_delay)) +
    ggtitle("American Airlines arr/dep delays") +
    theme(plot.title = element_text(size = 18, hjust = 0.5)) +
    xlab("departure delay (mins)") +
    ylab("arrival delay (mins)") +
    geom_point()
}

#' American Airlines average arrival delay
#'
#' The function calculates the average arrival delay for American Airlines flights departed from New York in 2013.
#'
#' @export
mean_arrdelay <- function(){
  arrdelay <- aa_flights[aa_flights$arr_delay >= 0, ] # negative time is not delay
  sprintf("For American Airlines flights departed from NYC in 2013, the average arrival delay was: %f minutes", mean(arrdelay$arr_delay , na.rm = T))
}

