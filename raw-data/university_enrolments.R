# Produces demo data for package documentation
# Source: http://highereducationstatistics.education.gov.au/
# Data is for 2018

library(tibble)

university_enrolments <- tribble(
  ~provider, ~state, ~domestic, ~international,
  "UQ", "QLD", 35648, 18055,
  "USyd", "NSW", 40777, 26041,
  "UNSW", "NSW", 39312, 23114,
  "UniMelb", "VIC", 45516, 26568,
  "Monash", "VIC", 45183, 38295,
  "ANU", "ACT", 15820, 10575,
  "UniAde", "SA", 19072, 7839,
  "UWA", "WA", 19075, 5389
)

usethis::use_data(university_enrolments)
