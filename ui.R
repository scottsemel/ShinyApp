
# This is the user-interface definition of the Shiny web application
# that plots the means of an exponential distribution as the sample size increase.

library(shiny)
library(markdown)

shinyUI(fluidPage(


  # Application title
  titlePanel("Simulation to Visualize the Central Limit Theorem in Action"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("samples",
                  "The number of samples of means drawn:",
                  min = 10,
                  max = 46,
                  value = 1)
     
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("normDistPlot")
      #,includeMarkdown("README.md")
    )
  )
))
