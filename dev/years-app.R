# fix to allow us to use a newer node version
# $env:NODE_OPTIONS="--openssl-legacy-provider"

library(shiny)

ui <- fluidPage(
    input_histoslider(
        "years",
        "Years",
        values = c(2025, 2026, 2026, 2027)
    )
)

server <- function(input, output){
    output$values <- renderText(paste(input$years, collapse = ", "))
}

shinyApp(ui, server)