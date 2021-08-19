library(shiny)

productos <- readWorkbook("PmaSolJulio2021.xlsx")

server <- function(input, output, session) {
  output$data <- renderTable({
    productos[, c("RUBRO", input$variable), drop = FALSE]
  }, rownames = TRUE)
}

