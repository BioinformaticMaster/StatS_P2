getwd()
setwd("/Users/saidbouatra/Statistical_software/statist_R_dev_git/StatS_P2")

#   Ejercicio 1: Una técnica operatoria tiene un 4% de complicaciones. 
# ¿Cuál es la probabilidad de que si se realiza la técnica 96 veces haya 2 complicaciones? 

dbinom(2, size = 96 , prob = 0.04) 

# ¿Cuál es la probabilidad de que si se realiza la técnica 101 veces haya más de 4 complicaciones?  

pbinom(4 , size = 101 , prob = 0.04 , lower.tail = FALSE)
