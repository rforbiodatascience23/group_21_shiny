#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom ggplot2 theme
#' @import gene2protein
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  mod_AA_frequency_server("AA_frequency_1")
}
