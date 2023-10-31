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
        hr()
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
#' @importFrom ggplot2 theme
#' @import gene2protein
#' @noRd
mod_AA_frequency_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$frequency <- renderPlot({
      if(input$text == ""){
        NULL
      } else{
        input$text |>
          gene2protein::aa_content() +
          ggplot2::theme(legend.position = "none")
      }
    })
  })
}

## To be copied in the UI
# mod_AA_frequency_ui("AA_frequency_1")

## To be copied in the server
# mod_AA_frequency_server("AA_frequency_1")
