################ Q1
library(spatstat)
par(mfrow=c(1,2))
a<-runif(4,min = 0, max = 10)
a
lambda1 <- function(x, y) {50*as.numeric((abs(x -a[1])<2) & (abs(y -a[2])<2))}
plot(rpoispp(lambda1, win=owin(c(0,10),c(0,10))))

lambda1 <- function(x, y) {50*as.numeric((abs(x -a[3])<2) & (abs(y -a[4])<2))}
plot(rpoispp(lambda1, win=owin(c(0,10),c(0,10))),add=TRUE)

a<-runif(4,min = 0, max = 10)
a
lambda1 <- function(x, y) {50*as.numeric((abs(x -a[1])<2) & (abs(y -a[2])<2))}
plot(rpoispp(lambda1, win=owin(c(0,10),c(0,10))))

lambda1 <- function(x, y) {50*as.numeric((abs(x -a[3])<2) & (abs(y -a[4])<2))}
plot(rpoispp(lambda1, win=owin(c(0,10),c(0,10))),add=TRUE)

################ Q2
data(mucosa)
summary(mucosa)
str(mucosa)
plot(mucosa)

lamb <- summary(mucosa)$intensity
lamb

quadratcount(mucosa, nx = 6, ny = 3)
Q <- quadratcount(mucosa, nx = 6, ny = 3)
plot(mucosa, cex = 0.5, pch = "+")
plot(Q, add = TRUE, cex = 2)

den <- density(mucosa)
plot(den)
den1 <- density(mucosa, sigma = 1)
plot(den1)
plot(mucosa, add = TRUE, cex = 1)

contour(den1)
plot(mucosa, add = TRUE, cex = 0.5)

pei<-rpoispp(lamb,  win=owin(c(0, 0.999653),  c(0.0125351, 0.808533)))
pei
plot(pei)

plot(density(split(mucosa)))

p <- pcfcross(mucosa, "ECL", "other")
plot(p)

mucosa_unmarked <- unmark(mucosa)
cdf.test(mucosa_unmarked, function(x, y) {x})
testx <- cdf.test(mucosa_unmarked, function(x, y) {x})
plot(testx)
cdf.test(mucosa_unmarked, function(x, y) {y})
testy <- cdf.test(mucosa_unmarked, function(x, y) {y})
plot(testy)

################ Q3
data(nbfires)
str(nbfires)
fire_types <- nbfires$marks$fire.type
summary(fire_types)
plot(fire_types)
plot(nbfires)

forest_points <- nbfires[nbfires$marks$fire.type == "forest"]
grass_points <- nbfires[nbfires$marks$fire.type == "grass"]
dump_points <- nbfires[nbfires$marks$fire.type == "dump"]
other_points <- nbfires[nbfires$marks$fire.type == "other"]
plot(density(forest_points))
plot(density(grass_points))
plot(density(dump_points))
plot(density(other_points))

forest_points <- nbfires[nbfires$marks$fire.type == "forest"]
emp <- distmap(forest_points)
plot(emp, main = "Empty space distances")
plot(forest_points, add = TRUE)

Fest(forest_points)
plot(Fest(forest_points))

Gest(forest_points)
plot(Gest(forest_points))

forest_points_no_marks <- unmark(forest_points)
plot(forest_points_no_marks)

fit3rd<-ppm(forest_points_no_marks, ~polynom(x, y, 3))
plot(fit3rd, how = "image", se = FALSE)

################ Q4
library(stpp)
lbda1 <- function(x, y, t) {10000*(1-x)^2*y^2*t^3 }
ipp1 <- rpp(lambda = lbda1)
str(ipp1)
ipp2 <- as.3dpoints(ipp1$xyt)
plot(ipp2, pch=19, mark=TRUE)
animation(ipp1$xyt,runtime = 10)

plot(ipp1$xyt)
plot(density(ipp1$xyt[,3]))

################ Q5
nsw <- read.csv("NSWschool.csv")
str(nsw)
head(nsw)
summary(nsw)
range(nsw$Longitude)
range(nsw$Latitude)

myppp <- ppp(nsw$Longitude, nsw$Latitude, c(141.440, 159.069),  c(-37.08421, -28.16951))

plot(myppp)
summary(myppp)
lamb <- summary(myppp)$intensity
lamb

quadratcount(myppp, nx = 6, ny = 3)
Q <- quadratcount(myppp, nx = 6, ny = 3)
plot(myppp, cex = 0.5, pch = "+")
plot(Q, add = TRUE, cex = 2)

den <- density(myppp, sigma = 1.5)
plot(den)
plot(myppp, add = TRUE, cex = 0.5)

contour(den)
plot(myppp, add = TRUE, cex = 0.5)

nswa<-rpoispp(lambnsw,  win=owin(c(141.440, 159.069),  c(-37.08421, -28.16951)))
nswa

plot(nswa)


