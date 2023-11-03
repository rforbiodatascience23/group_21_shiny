#' DNA_to_peptide UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_DNA_to_peptide_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      column(8, shiny::uiOutput(ns("DNA"))),
      column(4, shiny::numericInput(
        inputId = ns("dna_length"),
        value = 6000,
        min = 3,
        max = 100000,
        step = 3,
        label = "Random DNA length"
      ),
      shiny::actionButton(
        inputId = ns("generate_dna"),
        label = "Generate random DNA", style = "margin-top: 18px;"
      ))
    ),
    shiny::verbatimTextOutput(outputId = ns("peptide")) |>
      shiny::tagAppendAttributes(style = "white-space: pre-wrap;")

  )
}

#' DNA_to_peptide Server Functions
#'
#' @noRd
mod_DNA_to_peptide_server <- function(id){
  moduleServer( id, function(input, output, session){
    dna <- reactiveVal()
    ns <- session$ns

    # text input
    output$DNA <- renderUI({
      textAreaInput(
        inputId = ns("DNA"),
        label = "DNA sequence",
        placeholder = "Insert DNA sequence",
        value = dna(),
        height = 100,
        width = 600
      )
    })

    # Action button
    observeEvent(input$generate_dna, {
      dna(
        gene2protein::random_peptide(input$dna_length)
      )
    })

    # from DNA to peptide
    output$peptide <- renderText({
      # Ensure input is not NULL and is longer than 2 characters
      if(is.null(input$DNA)){
        NULL
      } else if(nchar(input$DNA) < 3){
        NULL
      } else{
        input$DNA |>
          toupper() |>
          gene2protein::convert_t_to_u() |>
          gene2protein::codons() |>
          gene2protein::codon_to_aa()
      }
    })
  })
}

## To be copied in the UI
# mod_DNA_to_peptide_ui("DNA_to_peptide_1")

## To be copied in the server
# mod_DNA_to_peptide_server("DNA_to_peptide_1")
