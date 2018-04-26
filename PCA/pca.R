data(iris)

mypca <- prcomp(iris[ , -5] , scale = TRUE)

summary(mypca)

plot(mypca , type = "l")
biplot(mypca , scale = 0)

str(mypca)

mypca$x

iris2 <- cbind(iris , mypca$x[ , 1:2])


library(ggplot2)

ggplot(iris2 , aes(PC1, PC2 , col = Species , fill = Species)) +
geom_point(shape = 21 , col = "black")
