library(shiny)

function(input, output, session) {
        
        output$Text1 = renderText(input$slider2 + 10)
                
}
