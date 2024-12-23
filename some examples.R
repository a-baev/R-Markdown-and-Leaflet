library(shiny)
library(miniUI)

myFirstGadget <- function() {
        ui <- miniPage(
                gadgetTitleBar('My First Gadget')
        )
        server <- function(input, output, session){
                observeEvent(input$done, {
                        print(input$done)
                        stopApp()
                })
        }
        runGadget(ui, server)        
} 



G2 <- gvisGeoChart(Exports, 
                   locationvar = 'Country', 
                   colorvar = 'Profit',
                   options = list(width = 600, height = 400)
)
plot(G2)

print(Line, 'chart')


df <- data.frame(label = c('US','GB','BR'), 
                 var1 = c(1,3,4), 
                 var2 = c(23,12,32))
Line <- gvisLineChart(df, xvar = 'label', yvar = c('var1', 'var2'))
plot(Line)
############################

library(plotly)
plot_ly(data = mtcars, x = ~wt, y = ~mpg, mode = 'markers', type = 'scatter')

terrain <- matrix(rnorm(100*100),nrow = 100, ncol = 100)
plot_ly(z = terrain, type = 'surface')


