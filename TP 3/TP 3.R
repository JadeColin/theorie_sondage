#Appel du package sampling
install.packages("sampling")
library(sampling)
help(package="sampling")


#exo 9

#1
nech=4
pi = inclusionprobabilities(nk,nech)
















#exo 10

data(belgianmunicipalities)
loc <- (1000<=belgianmunicipalities$Tot04)*(belgianmunicipalities$Tot04<=20000)
pop <- belgianmunicipalities[loc==1,]
attach(pop)

#Partie 1

options("scipen"=100, digits="4")
Npop<-nrow(pop)


#Q2 
nech<-100
pi<- inclusionprobabilities(Tot04,nech)
summary(pi)
sum(pi)

#Q3 : proba d'inclusion peuvent dépasser 1

#Q4 : sélection
set.seed(14121997)
ech<- UPpoisson(pi)
test<-sum(ech)
test

#Partie 2

options("scipen"=999, digits="4")

#Q6

y<-TaxableIncome
#estimateur de HT
est_hy_ty=HTestimator(y[ech=1],pi[ech=1])
est_hy_ty


#estimateur de variance
pikl=pi %*%t(pi)+diag(pi-pi*pi)
vest_ht_ty=varHT(y[ech==1],pikl[ech==1,ech==1],1)
vest_ht_ty


vest_ht_ty2= sum(y[ech==1]**2*(1-pi[ech==1])/pi[ech==1]**2)
vest_ht_ty2

#intervalle de confiance

Binf<-est_hy_ty-1.96*sqrt(vest_ht_ty)














