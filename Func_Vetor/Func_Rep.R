#Criando uma função de Repetição Apply
A<- matrix(1:12,nrow = 3,byrow = TRUE)
A
apply(A, 1, sum)
apply(A, 1, mean)
