library(shiny)
library(openxlsx)

Path <- "C:/Users/Olmedo/Desktop/Coursera/datasciencecoursera/DataProducts/Products/"

ui <- fluidPage(
  checkboxGroupInput("variable", "DISTRITOS:",
                     c("CHITRE" = "CHITRE",
                       "GUARARE" = "GUARARE",
                       "LAS.MINAS" = "LAS.MINAS",
                       "LAS.TABLAS" = "LAS.TABLAS",
                       "LOS.POZOS" = "LOS.POZOS",
                       "LOS.SANTOS" = "LOS.SANTOS",
                       "MACARACAS" = "MACARACAS",
                       "OCU" = "OCU",
                       "PESE" = "PESE",
                       "TONOSI" = "TONOSI")),
  tableOutput("data")
)
