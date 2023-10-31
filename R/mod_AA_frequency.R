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
 
  )
}
    
#' AA_frequency Server Functions
#'
#' @noRd 
mod_AA_frequency_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_AA_frequency_ui("AA_frequency_1")
    
## To be copied in the server
# mod_AA_frequency_server("AA_frequency_1")
