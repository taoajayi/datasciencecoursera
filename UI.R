library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Dataset Explorer"),
  

  sidebarLayout(
    sidebarPanel(
      textInput("caption", "Caption:", "Data Summary"),
      
      selectInput("dataset", "Choose a dataset:", 
                  choices = c("sleep", "Orange", "iris", "quakes")),
      
      numericInput("obs", "Number of observations to view:", 10)
    ),
    

    mainPanel(
      h3(textOutput("caption", container = span)),
      
      verbatimTextOutput("summary"), 
      
      tableOutput("view")
    )
  )
))