#' Sets default geom colours to be Orbisant brand compliant
#' @importFrom ggplot2 update_geom_defaults theme_set
.onAttach <- function(libname, pkgname) {
  
ggplot2::update_geom_defaults("bar", list(fill = "#F84791"))
ggplot2::update_geom_defaults("col", list(fill = "#F84791"))
ggplot2::update_geom_defaults("point", list(colour = "#F84791"))
ggplot2::update_geom_defaults("line", list(colour = "#F84791"))
ggplot2::update_geom_defaults("path", list(colour = "#F84791"))
ggplot2::update_geom_defaults("smooth", list(colour = "#25388E"))
ggplot2::update_geom_defaults("boxplot", list(colour = "#F84791"))
ggplot2::update_geom_defaults("segment", list(colour = "#F84791"))
ggplot2::update_geom_defaults("abline", list(colour = "#25388E"))
ggplot2::update_geom_defaults("hline", list(colour = "#25388E"))
ggplot2::update_geom_defaults("vline", list(colour = "#25388E"))
ggplot2::update_geom_defaults("rug", list(colour = "#25388E"))
ggplot2::update_geom_defaults("density", list(colour = "#F84791", fill = "#F84791", alpha = 0.5))
ggplot2::update_geom_defaults("pointrange", list(colour = "#25388E"))
ggplot2::update_geom_defaults("linerange", list(colour = "#25388E"))
ggplot2::update_geom_defaults("errorbar", list(colour = "#25388E"))
ggplot2::update_geom_defaults("crossbar", list(colour = "#25388E"))
ggplot2::update_geom_defaults("text", list(colour = "#25388E"))
ggplot2::update_geom_defaults("label", list(colour = "#25388E"))

ggplot2::theme_set(theme_orbisant())

invisible()

}
