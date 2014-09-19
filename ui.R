library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Retirement prediction"),
    
    
    sidebarPanel(
      numericInput('age', 'Enter your Age', 18, min = 15, max = 120, step = 1),
      numericInput('savings', 'Enter your Savings in U$', 1000, min = 0, max = 10000, step = 100),
      numericInput('endage', 'Enter your retirement age', 65, min = 15, max = 1200, step = 1),
      numericInput('interest', 'Enter the expected interest rate as %', 3, min = 0, max = 15, step = 0.1),
      submitButton('Submit')
    ),
    
    
    mainPanel(
      h3('Results of prediction'),
      h4('Years before you retire:'),
      verbatimTextOutput("outputNum"),
      h4('At this interest rate and working so many years you will retire with: '),
      verbatimTextOutput("prediction")
    )
  )
)