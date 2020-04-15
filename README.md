# ggorbisant

Colour palettes and plotting themes for Orbisant Analytics website

## Installation

You can install ggorbisant from GitHub by running the following:

```
# install.packages("remotes")
remotes::install_github("hendersontrent/ggorbisant")
```

## Theme Orbisant

The theme works by adding the function call to the end of your ggplot2 code:

```
library(ggplot2)
library(ggorbisant)

ggplot(university_enrolments, aes(x = domestic, y = international)) +
  geom_point() +
  theme_orbisant()
```

The colour palette built into the package is presented below:

```
library(scales)
show_col(ggorbisant:::orbisant_colours)
```
