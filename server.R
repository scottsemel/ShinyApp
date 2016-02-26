# This is the server logic for the Shiny web application.

library(shiny)

shinyServer(function(input, output) {

  output$normDistPlot <- renderPlot({

    # Get input$ from ui.R
    sampleValue <- input$samples

    # Generate distribution of the means
    set.seed(3000)
    xseq<-seq(2,9,.01)
    densities<-dnorm(xseq, 5,.8)*500
    means = NULL
    for (i in 1 : 1000) means = c(means, mean(rexp(sampleValue,.2)))
    
    # draw the distribution of means of the exponential
    hist(means, main="The Frequency of Means of an Exponential Distribution Approaching the Predicted Normal", ylim = c(0, 300))
    lines(xseq, densities, col="darkgreen",xlab="", ylab="Density", type="l",lwd=2, cex=2, cex.axis=.8)
       
    
  
  })

})

