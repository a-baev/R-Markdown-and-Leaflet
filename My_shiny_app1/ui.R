library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Slider App!"),

    sidebarLayout(
        sidebarPanel(
            h1('Move the slider'),
            sliderInput('slider2', 'Slede Me!', 0, 100, 0)
        ),

        mainPanel(
            h3('Slider Value:'),
            textOutput('Text1')
        )
    )
)
