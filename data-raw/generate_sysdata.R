# Code used to generate heart plot points object in sysdata

heart <- data.frame(t=seq(0, 2*pi, by=0.1) )
xhrt <- function(t) 16*sin(t)^3
yhrt <- function(t) 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)
heart$y <- yhrt(heart$t)
heart$x <- xhrt(heart$t)

usethis::use_data(heart, overwrite = TRUE, internal = TRUE)
