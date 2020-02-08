#' Data analysis for American Airlines flights data
#'
#' The function imports a .csv file from an URL. This file contains data for all flights that departed NYC (JFK, LGA or EWR) in 2013, they're taken from the nycflights13 package dataset.
#' Then, the function filters American Airlines flights and it makes a sample that will be used for a plot to check the dependence between arrival delay and distance traveled.
#' Finally, it calculates the average arrival delay of flights departed from NYC in 2013.
#'
#' @return list
#'
#' @examples
#' analyze()
#'
#' @export
analyze <- function(){
  # retrieve, filter data and make a sample
  flights <- catch()
  aa <- flights[grepl('AA', flights$carrier), ]
  aa_sample <- aa[sample(nrow(aa), 300), ]

  # plot the sample of AA data
  p <- ggplot(aa_sample, aes(x = distance, y = arr_delay)) +
    ggtitle("American Airlines arrival delay vs distance traveled") +
    theme(plot.title = element_text(hjust = 0.5, size = 18)) +
    xlab("distance (miles)") +
    ylab("arrival delay (mins)") +
    geom_point(alpha = 0.3)

  # analysis
  arrdelay <- aa[aa$arr_delay >= 0, ] #negative time is not delay
  g <- sprintf("For American Airlines, the average arrival delay in 2013 was: %f minutes", mean(arrdelay$arr_delay , na.rm = T))

  l <- list(average = g, plot = p)
  return(l)
}
