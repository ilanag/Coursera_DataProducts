library(shiny)
library(data.table)
library(rCharts)
library(reshape2)
library(markdown)
library(data.table)

dataset <- read.csv("data/pigeon-racing.csv")

shinyServer(
  function(input, output) {
    
    output$downloadData <- downloadHandler(
      filename = "dataset.csv",
      content = function(file) {
        write.csv(dataset, file)
      }
    )
    
    output$dataTable <- renderDataTable({
      dataset
    })
    
  
    output$pigeonGenderPlot <- renderPlot({
      
      if(input$pigeonGender == 'cock') {
        data <- subset(dataset, Sex == 'C')
      } 
      
      if(input$pigeonGender == 'hen') {
        data <- subset(dataset, Sex == 'H')
      } 
      
      if(input$pigeonGender == 'both') {
        data <- dataset
      }
      
      if (exists("data")){
        hist(data$Speed, main="Histogram of Speed", xlab="Speed", ylab="Frequency")
        output$average <- renderPrint({median(data$Speed)})
      } else {
        hist(dataset$Speed, main="Histogram of Speed", xlab="Speed", ylab="Frequency")
        output$average <- renderPrint({median(dataset$Speed)})
      }
      
      #output$averagedSpeedsByColor <- renderDataTable(tapply(data$Speed, data$Color, mean))
    })

})
