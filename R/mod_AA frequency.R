#' AA frequency UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_AA frequency_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' AA frequency Server Functions
#'
#' @noRd 
mod_AA frequency_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_AA frequency_ui("AA frequency_1")
    
## To be copied in the server
# mod_AA frequency_server("AA frequency_1")
