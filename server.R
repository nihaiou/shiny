library(shiny)
library(datasets)

# dataset
dataset<-iris
shinyServer(function(input, output) {
  
  output$Plot <- renderPlot({
    x    <- dataset[1:input$obs, 1]
    y    <- dataset[1:input$obs, 2]
  
    # draw the plot 
    plot(x,y,xlab="Sepal.Length",ylab="Sepal.Width",col="red")
  })
    
  # Show the first "n" observations
  output$view <- renderTable({
    head(dataset, n = input$obs)
  })
})
