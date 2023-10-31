#' DNA to peptide UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_DNA to peptide_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' DNA to peptide Server Functions
#'
#' @noRd 
mod_DNA to peptide_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_DNA to peptide_ui("DNA to peptide_1")
    
## To be copied in the server
# mod_DNA to peptide_server("DNA to peptide_1")
