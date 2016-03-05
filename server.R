library(shiny)
TempConverter <- function(fahrenheit) (fahrenheit-32) / 1.8

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$fahrenheit})
    output$prediction <- renderPrint({TempConverter(input$fahrenheit)})
  }
)
