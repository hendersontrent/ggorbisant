#' Styles plots according to Orbisant's theme
#'
#' Uses the colours outlined here plus some 2 others https://www.canva.com/colors/color-palettes/floaty-pool-fun/
#' 
#' @inheritParams ggplot2::theme_bw
#' 
#' @rdname theme_orbisant
#' @export
#' 
#' @examples
#' library(ggplot2)
#' ggplot(df, aes(x = x, y = x)) +
#'  geom_point() +
#'  theme_orbisant()

theme_orbisant <- function(){
  theme_bw() +  
  theme(legend.position = "bottom",
          axis.text = element_text(colour = orbisant_col("dark_blue")),
          axis.title = element_text(colour = orbisant_col("dark_blue"), face = "bold"),
          panel.border = element_blank(),
          panel.grid.minor = element_blank(),
          panel.grid.major = element_line(colour = "white"),
          axis.line = element_line(colour = orbisant_col("dark_blue")),
          panel.background = element_rect(fill = orbisant_col("light_grey"), colour = orbisant_col("light_grey")),
          plot.background = element_rect(fill = orbisant_col("light_grey"), colour = orbisant_col("light_grey")),
          legend.background = element_rect(fill = orbisant_col("light_grey"), colour = orbisant_col("light_grey")),
          legend.box.background = element_rect(fill = orbisant_col("light_grey"), colour = orbisant_col("light_grey")),
          legend.key = element_rect(fill = orbisant_col("light_grey"), colour = orbisant_col("light_grey")),
          legend.text = element_text(colour = orbisant_col("dark_blue")),
          legend.title = element_text(colour = orbisant_col("dark_blue")),
          plot.title = element_text(colour = orbisant_col("dark_blue")),
          plot.subtitle = element_text(colour = orbisant_col("dark_blue")),
          plot.caption = element_text(colour = orbisant_col("dark_blue")))
}

#' Orbisant colour scale
#' 
#' @param discrete Whether the colour aesthetic is discrete or not
#' @param reverse Whether the colour palette should be reversed
#' @param ... Additional arguments
#'
#' @rdname scale_colour_orbisant
#' @export
#' 
#' @examples
#' library(ggplot2)
#' ggplot(df, aes(x = x, y = x, colour = category)) +
#'  geom_point() +
#'  scale_colour_orbisant() +
#'  theme_orbisant()
#'  
#' @importFrom ggplot2 discrete_scale scale_color_gradientn

scale_colour_orbisant <- function(discrete = TRUE, reverse = FALSE, ...) {
  pal <- orbisant_pal(reverse = reverse)
  
  if (discrete) {
    discrete_scale("colour", "orbisant", palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' @importFrom grDevices colorRampPalette
orbisant_pal <- function(reverse = FALSE, ...) {
  pal <- orbisant_col()
  pal <- pal[!(names(pal) %in% c("dark_blue", "tiffany_blue", "white"))]
  
  if (reverse) {
    pal <- rev(pal)
  }
  colorRampPalette(pal, ...)
}

#' @export
#' @rdname scale_colour_orbisant
scale_color_orbisant <- scale_colour_orbisant

orbisant_col <- function(...) {
  cols <- c(...)
  
  if (is.null(cols)) {
    return(orbisant_colours)
  }
  
  orbisant_colours[cols]
}

#' General colour palette imports as hex codes

orbisant_colours <- c(
  dark_blue = "#25388E",
  tiffany_blue = "#57DBD8",
  darker_green = "#37BEBO",
  bright_pink = "#F84791",
  light_pink = "#F9B8B1",
  light_grey = "#C3CEDA"
)
