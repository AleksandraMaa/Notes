#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#



library(shiny)

ui <- fluidPage(
    selectInput(inputId = 'choice',
                label = 'Choice',
                choice = c('Hello','Goodbye'),
                selected = c('Hello')
    ),
    
    textOutput('result')
    
    
)

server <- function(input,output,session)({
    
    text <- reactiveValues()
    
    observe({
        if (input$choice == 'Hello') {
            text$result <- 'Hello World'
        }
    })
    
    observe({
        if (input$choice == 'Goodbye') {
            text$result <- 'Goodbye World'
        }
    })
    
    output$result <- renderText({
        text$result
    })
    
})


shinyApp(ui = ui, server = server)
