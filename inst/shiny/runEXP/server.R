server <- function(input, output){
  # grab data
  if("flights" %in% ls(envir = .GlobalEnv)){
    get("flights", envir = .GlobalEnv)
  } else{
    flights <- read.csv("https://query.data.world/s/kho6cpswdlcnjancrj53o4e3wwv365", header = TRUE, stringsAsFactors = FALSE)
  }

  # filter based on inputs
  df <- reactive({
    flights[flights$origin == input$origin & flights$month == input$month & flights$day == input$day, ]
  })

  # histogram of departure delays
  output$plot1 <- plotly::renderPlotly({
    plotly::plot_ly(df(), x = ~arr_delay, type = "histogram")
  })

  # histogram of distance
  output$plot2 <- plotly::renderPlotly({
    plotly::plot_ly(df(), x = ~distance, type = "histogram")
  })
}
