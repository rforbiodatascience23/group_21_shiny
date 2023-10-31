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
 
  )
}
    
#' DNA_to_peptide Server Functions
#'
#' @noRd 
mod_DNA_to_peptide_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_DNA_to_peptide_ui("DNA_to_peptide_1")
    
## To be copied in the server
# mod_DNA_to_peptide_server("DNA_to_peptide_1")