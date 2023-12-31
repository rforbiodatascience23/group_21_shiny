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
    shiny::sidebarLayout(
      shiny::sidebarPanel(
        shiny::textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      shiny::mainPanel(
        shiny::plotOutput(
          outputId = ns("frequency")
        )

      )
    )
  )
}
#' AA_frequency Server Functions
#'
#'
#' @noRd
mod_AA_frequency_server <- function(id) {
  moduleServer(id, function(input, output, session) {
    ns <- session$ns
    output$frequency <- renderPlot({
      if (input$peptide == "") {
        return(NULL)
      } else {
        input$peptide |>
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
