#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

library(shiny)

ui <- fluidPage(
    selectInput(inputId = 'choice',
                label = 'Pop Singers',
                choice = c('American Pop','KPOP',"CPOP"),
                selected = c('American Pop')
    ),
    
    textOutput('result')
    
    
)

server <- function(input,output,session)({
    
    text <- reactiveValues()
    
    observe({
        if (input$choice == 'American Pop') {
            text$result <- 'Taylor Swift\nSelena Gomez\nLady Gaga\nThe Weeknd'
        }
    })
    
    observe({
        if (input$choice == 'KPOP') {
            text$result <- 'Blackpink\nBTS\nEXO\nSuperM'
        }
    })
    
    observe({
        if (input$choice == 'CPOP') {
            text$result <- 'Jay Chou\nJolin Tsai\nKUN\nTHE9'
        }
    })
    output$result <- renderText({
        text$result
    })
    
})


shinyApp(ui = ui, server = server)