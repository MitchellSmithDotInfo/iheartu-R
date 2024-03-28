par(mfrow = c(1,3) , col.lab = "white")
plot(0,0, ylim = c(-10,10), xlim = c(-10,10), asp=1, col="white")
# abline(h=c(-4,4), v=0)
segments(x0=4,
         x1=-4,
         y0=4,
         y1=4)
segments(x0=4,
         x1=-4,
         y0=-4,
         y1=-4)
segments(x0=0,
         x1=0,
         y0=-4,
         y1=4)
par(col.lab = "black")
title(xlab = "x", ylab = "y")

dat<- data.frame(t=seq(0, 2*pi, by=0.1) )
xhrt <- function(t) 16*sin(t)^3
yhrt <- function(t) 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)
dat$y=yhrt(dat$t)
dat$x=xhrt(dat$t)
with(dat, plot(x,y, type="l",xlim=c(-40,40), ylim=c(-45,45), col=2))

xu <- function(x) {x^2}
# yu <- function(x) {-x^2}
plot(xu, type="l", xlim = c(-2,2), ylim = c(-1,3))
