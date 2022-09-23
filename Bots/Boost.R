normal<-rnorm(100)
#Bootstrapping
boots<-sample(normal,15,replace = TRUE)
boots
hist(boots)
bootsDistNormal<- replicate(15, boots)
bootsDistNormal

bootsDistNormal15<-replicate(15,boots)
bootsDistNormal95<-replicate(95,boots)
mean(bootsDistNormal15)
mean(bootsDistNormal95)
mean(normal)
