library(shiny)

retirement <- function(age, savings, endage, interest){
  ages_to_work <- endage - age
  total_money <- 0
  for(i in 1:ages_to_work){
    total_money <- total_money + savings
    total_money <- total_money*( 1.00 + interest/100)
  }
  return(total_money)
}
shinyServer(
  function(input, output) {
    output$outputNum <- renderPrint({input$endage - input$age})
    output$prediction <- renderPrint({retirement(input$age, input$savings, input$endage, input$interest)})
  }
)