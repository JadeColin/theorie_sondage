#Taille d’echantillon et taille de population
nech=4
Npop=50
#Probabilites d’inclusion pour un SRS
pi_ech=rep(nech/Npop, nech)
#Probabilites d’inclusion d’ordre 2 pour un SRS
pikl_ech=matrix(data=rep(nech*(nech-1)/(Npop*(Npop-1)),
                           nech*nech),nech)
pikl_ech

for (i in 1:4){
  pikl_ech[i,i]=nech/Npop
}
#Variable y_k : nb de M&Ms bleus dans le sachet k
y_ech=c(4,2,0,3)
#Variable x_k : nb de M&Ms dans le sachet k
x_ech=c(16,15,16,18)

#Q1: estimation du nb total de M&Ms bleus et intervalle de
confiance
est_ht <- HTestimator(y_ech,pi_ech)
Binf <- est_ht - 1.96 * sqrt(varHT(y_ech, pikl_ech, method="2"))
Bsup <- est_ht + 1.96 * sqrt(varHT(y_ech, pikl_ech, method="2"))

#Q2: estimation du nb total de M&Ms et intervalle de confiance

est_ht <- HTestimator(x_ech,pi_ech)
Binf <- est_ht - 1.96 * sqrt(varHT(x_ech, pikl_ech, method="2"))
Bsup <- est_ht + 1.96 * sqrt(varHT(x_ech, pikl_ech, method="2"))



#Q3: estimation de la proportion de M&ms bleus
R_ht <- HTestimator(y_ech,pi_ech)/HTestimator(x_ech,pi_ech)
R_ht


