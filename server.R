library(shiny)
diabetsRisk <- function(glucose) glucose / 200

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$glucose})
    output$preciction <- renderPrint({diabetsRisk(input$glucose)})
  }
)