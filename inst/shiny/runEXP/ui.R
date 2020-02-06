ui <- fluidPage(

  # title
  titlePanel("Explore data used in flightsanalysis package"),

  # sidebar
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "origin",
                  label = "Select departure airport",
                  choices = c("JFK", "LGA", "EWR"),
                  selected = "JFK"),
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
        tabPanel("Arrival delay for selected input", shinycssloaders::withSpinner(plotly::plotlyOutput("plot1"), color="#6495ed")),
        tabPanel("Distance in miles for selected input", shinycssloaders::withSpinner(plotly::plotlyOutput('plot2'), color="#6495ed"))
      )
    )
  )
)
