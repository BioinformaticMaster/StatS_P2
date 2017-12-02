getwd()
setwd("/Users/saidbouatra/Statistical_software/statist_R_dev_git/StatS_P2")

#   Ejercicio 1: Una técnica operatoria tiene un 4% de complicaciones. 
# ¿Cuál es la probabilidad de que si se realiza la técnica 96 veces haya 2 complicaciones? 

dbinom(2, size = 96 , prob = 0.04) 

# ¿Cuál es la probabilidad de que si se realiza la técnica 101 veces haya más de 4 complicaciones?  

pbinom(4 , size = 101 , prob = 0.04 , lower.tail = FALSE)

# Ejercicio 2: La duración media de la estancia hospitalaria de una enfermedad es de 9 ± 3 días (media y desviación estándar). 
# Suponiendo que se trata de una distribución normal, calcula la probabilidad de que una estancia dure entre 8 y 15 días. 

pnorm(15,9,3) - pnorm(8,9,3)

# Hallar el valor crítico de t para el que el área bajo la cola derecha de la f. de densidad de la variable aleatoria t de Student sea 0.05, para el caso de que la variable aleatoria T tenga 16 grados de libertad (g. l.). Representad gráficamente y comentad.  


qt(0.05 , 16 , lower.tail = FALSE) 

## Sección 2. Teorema Central del Límite.  
# Ejercicio 4  (Demostración):  A. Genera 100,000 valores aleatorios de acuerdo a una distribución uniforme con mínimo 1 y máximo 5.

a <- runif(100000 , min = 1 , max = 5)
options(max.print = 999999) # no es necesario en este caso , pero si tuvieramos que visualizar todos los valores.

c <- matrix(a,ncol = 20)

hist(c[,1],col = "gray")
hist(c[,2],col = "red")
hist(c[,3],col = "blue")
hist(c[,4],col = "orange")
hist(c[,5], col = "pink")

# C. Crea un vector que guarde la suma de los valores por fila. 

v <- apply(c,1,sum)
head(c)
head(v)



#Realiza un histograma con referencia a la distribución normal.
mean(v)
sd(v)
hist(dnorm(v,mean(v),sd(v)))

# diagrama cuantil-cuantil (qq.plot) con referencia a la distribución normal.  
