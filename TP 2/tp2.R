install.packages("sampling")
library(sampling)
help(package="sampling")

##exo 6

#1
install.packages("readxl") # Seulement si le package n'a jamais été installé
library(readxl)
aeroports_complets<- read_excel("aeroports_complet.xlsx")
attach(aeroports_complets)
summary <- summary(Pass19)
summary
range <- summary[6]-summary[1]
range
rapport <-summary[5]/summary[2]
rapport
mu_x <-mean(Pass19)
S2_x<-var(Pass19)
cv_x <-sqrt(S2_x)/mu_x
cv_x


#2
















