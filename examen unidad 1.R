install.packages("datos")
library(datos)

millas<-(datos::millas)

?millas
dim(millas)
names(millas)
str(millas)
anyNA(millas)
typeof(millas)
View(millas)

millas_G<-as.data.frame(millas)

summary(millas_G)

install.packages("modeest")
library(modeest)

mfv(millas_G$fabricante)
mfv(millas_G$modelo)
mfv(millas_G$cilindrada)
mfv(millas_G$anio)
mfv(millas_G$cilindros)
mfv(millas_G$transmision)
mfv(millas_G$traccion)
mfv(millas_G$ciudad)
mfv(millas_G$autopista)
mfv(millas_G$combustible)
mfv(millas_G$clase)

var(millas_G$cilindrada)
var(millas_G$anio)
var(millas_G$cilindros)
var(millas_G$ciudad)
var(millas_G$autopista)

sd(millas_G$cilindrada)
sd(millas_G$anio)
sd(millas_G$cilindros)
sd(millas_G$ciudad)
sd(millas_G$autopista)

library<-(FinCal)

coefficient.variation(sd=sd(millas_G$cilindrada),
                      avg=mean(millas_G$cilindrada))
coefficient.variation(sd=sd(millas_G$anio),
                      avg=mean(millas_G$anio))
coefficient.variation(sd=sd(millas_G$cilindros),
                      avg=mean(millas_G$cilindros))
coefficient.variation(sd=sd(millas_G$ciudad),
                      avg=mean(millas_G$ciudad))
coefficient.variation(sd=sd(millas_G$autopista),
                      avg=mean(millas_G$autopista))

install.packages("tidyverse")
install.packages("RColorBrewer")

library(tidyverse)
library(RColorBrewer)

boxplot<-ggplot(millas_G,aes(factor(transmision), 
                             ciudad, fill=transmision))+
  geom_boxplot()+
  ggtitle( "transmision de autos en ciudad" )+
  xlab( "transmision" )+
  ylab( "ciudad" )

boxplot

dispersion_1<-ggplot(millas_G, aes(x=cilindrada, y=autopista, color=clase))+
  geom_point()
dispersion_1

attach(millas_G)
tabla_1<-table(millas_G$cilindros)
#visualizamos x
tabla_1
color=c("cyan", "coral", "darkorchid1", "gold1")
barplot(tabla_1, xlab="cilindros", ylab="frecuencias", 
        main="grafico de barras de cilindros", col=color)
#finalizado
#finalizado 2
#visualizamos x
#visualizamos x
#visualizamos x

