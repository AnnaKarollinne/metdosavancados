normal<-rnorm(20, mean = 50,sd=2)
#Bootstrapping
boots<-sample(normal,15,replace = TRUE)
boots
hist(boots)
