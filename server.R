library(shiny)
library(datasets)


shinyServer(function(input, output) {
  

  datasetInput <- reactive({
    switch(input$dataset,
           "sleep" = sleep,
           "Orange" = Orange,
           "iris" = iris,
           "quakes" = quakes)
  })
  
  output$caption <- renderText({
    input$caption
  })
  
  output$summary <- renderPrint({
    dataset <- datasetInput()
    summary(dataset)
  })
  
  output$view <- renderTable({
    head(datasetInput(), n = input$obs)
  })
})