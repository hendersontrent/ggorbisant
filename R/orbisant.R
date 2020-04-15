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
#' 

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

#' General colour palette imports as hex codes

orbisant_colours <- c(
  dark_blue = "#25388E",
  tiffany_blue = "#57DBD8",
  darker_green = "#37BEBO",
  bright_pink = "#F84791",
  light_pink = "#F9B8B1",
  light_grey = "#C3CEDA"
)
