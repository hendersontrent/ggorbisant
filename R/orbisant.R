#' General colour palette imports as hex codes

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
scale_fill_orbsisant <- function(...) {
  ggplot2::discrete_scale('fill', 'orbisant', orbisant_pal(), ...)
}

#' Style general plot features according to the Orbisant theme
#'
#' Uses the colours outlined here plus some 2 others https://www.canva.com/colors/color-palettes/floaty-pool-fun/
#' 
#' @rdname theme_orbisant
#' @export

theme_orbisant <- function(){
  ggplot2::theme_bw() +
    theme(legend.position = "bottom",
          axis.text = element_text(colour = "#25388E"),
          axis.title = element_text(colour = "#25388E", face = "bold"),
          panel.border = element_blank(),
          panel.grid.minor = element_blank(),
          panel.grid.major = element_line(colour = "white"),
          axis.line = element_line(colour = "#25388E"),
          panel.background = element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          plot.background = element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          legend.background = element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          legend.box.background = element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          legend.key = element_rect(fill = "#edf0f3", colour = "#edf0f3"),
          legend.text = element_text(colour = "#25388E"),
          legend.title = element_text(colour = "#25388E"),
          plot.title = element_text(colour = "#25388E"),
          plot.subtitle = element_text(colour = "#25388E"),
          plot.caption = element_text(colour = "#25388E"))
}
