install.packages("sampling")
library(sampling)
help(package="sampling")


y_ech <-c(1,4)
pi_ech <- c(0.7,0.7)
pikl_ech <- matrix(data=c(0.7,0.6,0.6,0.7),nrow=2)
est_ht <- HTestimator(y_ech,pi_ech)
est_ht
evar_ht <- varHT(y_ech,pikl_ech,method="1")
evar_ht
