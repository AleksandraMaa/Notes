#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)
library(ggplot2)
library(DT)



shinyUI(fluidPage(
    # Page Title
    titlePanel("Car Statistics by Models"),
    
   
    sidebarLayout(      
        
        
        sidebarPanel(
            selectInput("statistic", "Statistics:", 
                        choices=colnames(mtcars)),
            helpText("mpg: Miles/(US) gallon"),
            helpText("cyl: Number of cylinders"),
            helpText("disp: Displacement"),
            helpText("hp: Gross horsepower"),
            helpText("drat: Rear axle ratio"),
            helpText("wt: Weight(1000 lbs)"),
            helpText("qsec: 1/4 mile time"),
            helpText("vs: Engine(0 = V-shaped, 1 = manual"),
            helpText("am: Transmission (0 = automatic, 1 = manual"),
            helpText("gear: Number of forward gears"),
            helpText("carb: Number of carburetors"),
        ),
        
        
        mainPanel(
            plotOutput("Plot")  
        )
        
    )
))