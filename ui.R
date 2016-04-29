library(shiny)
library(data.table)
library(rCharts)
library(reshape2)
library(markdown)
library(ggplot2)
library(data.table)

dataset <- read.csv("data/pigeon-racing.csv")

shinyUI(fluidPage(
  navbarPage("Pigeon Racing Results by Sex",
    
    tabPanel("Plot",
             radioButtons(
               "pigeonGender",
               "Please Select Sex of Pigeons to View:",
               choices = list("Both" = "both", "Male" = "cock", "Female" = "hen"), selected=1),
               plotOutput("pigeonGenderPlot"),
             

             h4('The Average Speed by Sex Selected is: '),
             verbatimTextOutput("average")
             
             ),
    
    tabPanel("About",
      mainPanel(
        includeMarkdown("include.md")
      )
    ),
    
    tabPanel("Data", 
      dataTableOutput("dataTable"),
      downloadButton('downloadData', 'Download')
    )
  )
  
))
