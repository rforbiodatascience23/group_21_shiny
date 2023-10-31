#' AA_frequency UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_AA_frequency_ui <- function(id){
  ns <- NS(id)
  tagList(
    sidebarLayout(
      sidebarPanel(
        textInput("text", label = h3("Peptide sequence"), value = "Enter peptide sequence..."),
        hr(),
        fluidRow(column(3, verbatimTextOutput("value")))
      ),
      mainPanel(
        plotOutput(
          outputId = ns("frequency")
        )
      )
    )
  )
}

#' AA_frequency Server Functions
#'
#' @noRd
mod_AA_frequency_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$value <- renderPrint({ input$text })
  })
}

## To be copied in the UI
# mod_AA_frequency_ui("AA_frequency_1")

## To be copied in the server
# mod_AA_frequency_server("AA_frequency_1")
