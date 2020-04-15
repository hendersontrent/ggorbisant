#' General colour palette imports as hex codes
#' Uses the colours outlined here plus some others that are graphically related https://www.canva.com/colors/color-palettes/floaty-pool-fun/

orbisant_palette <- c(
  "#25388E",
  "#57DBD8",
  "#37BEB0",
  "#F84791",
  "#F9B8B1",
  "#C3CEDA"
)

#' Orbisant Colour and Fill Scales
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name orbisant_pal
#'
#' @return the Orbisant palette
#' @export
#'
NULL

orbisant_pal <- function(){
  scales::manual_pal(orbisant_palette)
}

#' @rdname orbisant_pal
#' @export
scale_colour_orbisant <- function(...) {
  ggplot2::discrete_scale("colour", "orbisant", orbisant_pal(), ...)
}

#' @rdname orbisant_pal
#' @export
scale_color_orbisant <- scale_colour_orbisant


#' @rdname orbisant_pal
#' @export
scale_fill_orbisant <- function(...) {
  ggplot2::discrete_scale('fill', 'orbisant', orbisant_pal(), ...)
}

#' Style general plot features according to the Orbisant theme
#'
#' @rdname theme_orbisant
#' @export

theme_orbisant <- function(grids = FALSE){
  the_theme <- ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "bottom",
          axis.text = ggplot2::element_text(colour = "#25388E"),
          axis.title = ggplot2::element_text(colour = "#25388E", face = "bold"),
          panel.border = ggplot2::element_blank(),
          panel.grid.minor = ggplot2::element_blank(),
          axis.line = ggplot2::element_line(colour = "#25388E"),
          panel.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          plot.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          legend.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          legend.box.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          legend.key = ggplot2::element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          legend.text = ggplot2::element_text(colour = "#25388E"),
          legend.title = ggplot2::element_text(colour = "#25388E"),
          plot.title = ggplot2::element_text(colour = "#25388E"),
          plot.subtitle = ggplot2::element_text(colour = "#25388E"),
          plot.caption = ggplot2::element_text(colour = "#25388E"),
          strip.background = ggplot2::element_rect(fill = "#edf0f3", colour = "#25388E"),
          strip.text = ggplot2::element_text(colour = "#25388E"))
  if(grids){
    the_theme <- the_theme +
      ggplot2::theme(panel.grid.major = ggplot2::element_line(colour = "white"))
  }
  
  return(the_theme)
}

