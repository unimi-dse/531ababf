library(ggplot2)
server <- function(input, output){
  # grab data
  if("flights" %in% ls(envir = .GlobalEnv)){
    get("flights", envir = .GlobalEnv)
  } else{
    flights <- read.csv("https://query.data.world/s/kho6cpswdlcnjancrj53o4e3wwv365", header = TRUE, stringsAsFactors = FALSE)
  }

  # filter based on inputs
  df <- reactive({
    flights[flights$origin == input$origin & flights$carrier == input$carrier & flights$month == input$month & flights$day == input$day, ]
  })

  # histogram of departure delays
  output$plot1 <- renderPlot({
    a <- ggplot(df(), aes(x = arr_delay)) +
      xlab("arrival delay") +
      geom_histogram(col = "black", fill = "darkgray")
    a
  })

  # histogram of distance
  output$plot2 <- renderPlot({
    d <- ggplot(df(), aes(x = distance)) +
      geom_histogram(col = "black", fill = "darkgray")
    d
  })
}
