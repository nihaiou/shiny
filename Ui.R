library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("test for homework 11"),
  
  # Sidebar with controls to select a dataset and specify the
  # number of observations to view
  sidebarLayout(
    sidebarPanel(
        
      numericInput("obs", "显示iris数据的前r行:", 10),
      helpText("备注：这里散点图只画出x=Sepal.Length，y=Sepal.Width的散点图")
     ),
    
    # Show a summary of the dataset and an HTML table with the 
    # requested number of observations
    mainPanel(
    
      tableOutput("view"),
      plotOutput("Plot")
    )
  )
))
