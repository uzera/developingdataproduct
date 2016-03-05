library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Fahrenheit to Celsius Converter"),
    
    sidebarPanel(
      numericInput('fahrenheit','Choose the temperature in Fehrenheit:',70,min = 5,max = 110,step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Convert to Celsius'),
      h4('You entered this temperature in Fahrenheit:'),
      verbatimTextOutput("inputValue"),
      h4('which equals to this number in Celsius:'),
      verbatimTextOutput("prediction")
    )
  )
)

