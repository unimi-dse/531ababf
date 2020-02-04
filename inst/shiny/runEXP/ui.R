ui <- fluidPage(

  # title
  titlePanel(
    h1("Explore data used in flightsanalysis package's functions", align = "center")
  ),

  # sidebar
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "origin",
                  label = "Select departure airport",
                  choices = c("JFK", "LGA", "EWR"),
                  selected = "JFK"),
      selectInput(inputId = "carrier",
                  label = "Select carrier",
                  choices = c("9E", "AA", "AS", "B6", "DL", "EV", "F9", "FL", "HA", "MQ", "OO", "UA", "US", "VX", "WN", "YV"),
                  selected = "AA"),
      selectInput(inputId = "month",
                  label = "Select month",
                  choices = c(1:12),
                  selected = "2"),
      selectInput(inputId = "day",
                  label = "Select day",
                  choices = c(1:31),
                  selected = "16")
    ),

    # mainpanel
    mainPanel(
      tabsetPanel(
        tabPanel("Arrival delay for selected input", plotOutput("plot1")),
        tabPanel("Distance in miles for selected input", plotOutput('plot2'))
      )
    )
  )
)
