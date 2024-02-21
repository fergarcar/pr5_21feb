getwd()
nuevo_dir <- "C:/pr5_21feb"
setwd(nuevo_dir)

#Ejercicio 1. Crear un data fram
library()

num <- 200

set.seed(123)

sites <- sample(paste0("Site", 1:10), num, replace = TRUE)

num_artefactos <- sample(1:1000, num, replace = TRUE)
                       
tipos_artefactos <- sample(c("Pottery", "Tools", "Jewelry", "Weapons"), num, replace = TRUE)

contexto <- sample(c("Habitacional", "Funerario", "Otros"), num, replace = TRUE)
latitud <- runif(num, min = 0, max = 90)
longitud <- runif(num, min = -180, max = 180)

archaeology_data <-data.frame(sites=sites,
                              artifact_types=artifact_types,
                              num_artefactos=num_artefactos,
                              contexto=contexto,
                              latitud=latitud,
                              longitud=longitud)
                              

print(archaeology_data)

#Ejercicio 2. Calcula la media y cuartiles de la variable numero de artefactos
media <- mean(num_artefactos)
print (media)
cuartiles <- quantile(archaeology_data$num_artefactos, probs = c(0.25, 0.50, 0.75))
print(paste("25% cuartil", cuartiles[1]))
print(paste("50% cuartil", cuartiles[2]))
print(paste("75% cuartil", cuartiles[3]))

#Ejercicio 3
hist(archaeology_data$num_artefactos, main="Histograma numero artefactos", col = rainbow (10),
     xlab="numero de artefactos", ylab = "Frecuencia")

#Ejercicio 4.
boxplot(x = num_artefactos, y = num_artefactos, main = "Grafico de caja", col = c("orange"),
        xlab="Clase", ylab="Frecuencia")

#Ejercicio 5

#Ejercicio 6
library(ggplot2)
ggplot(archaeology_data, aes(x = longitud, y = latitud)) +
  geom_bin2d() +
  labs(title = "Artifact Density Heatmap", x = "Lontigude", y = "Latitude")

#Ejercicio 7
num_total_artefactos <- sum(archaeology_data$num_artefactos)
print(num_total_artefactos)

#Ejercicio 8
mediana <- median(archaeology_data$num_artefactos)
print(mediana)

#Ejercicio 9

#Ejercicio 10

#Ejercicio 11

#Ejercicio 12
boxplot(
  `largo(a)`~`codigo del lugar`,
  clastosatr
)

dev.new()
boxplot