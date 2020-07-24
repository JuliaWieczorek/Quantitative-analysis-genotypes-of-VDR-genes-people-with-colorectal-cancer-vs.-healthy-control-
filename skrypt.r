dane = read.table(file.choose(), header=T, sep=',')

tabela = table(dane$Grupa, dane$polimorfizm)

summary(dane)

plot(dane$polimorfizm, dane$Grupa)

n_cancer = 276
n_control = 369

#p dla allelu G
#q dla allelu T

table(dane$polimorfizm,dane$Grupa)

# PRAWO H-W

#CANCER 
#G  
Cancer_G =  57 * 2 + 140
#T 
Cancer_T = 79 * 2 + 140

Cancer_p = Cancer_G / (2 * n_cancer) 
Cancer_p

Cancer_q = Cancer_T / (2 * n_cancer) 
Cancer_q

Cancer_p2 = Cancer_p^2
Cancer_2pq = 2*Cancer_p*Cancer_q
Cancer_q2 = Cancer_q^2

Cancer_GG = 57
Cancer_GT = 140
Cancer_TT = 79


#CONTROL 
#G  
Control_G =  79 * 2 + 178
#T 
Control_T = 112 * 2 + 178


Control_p = Control_G / (2 * n_control) 
Control_p

Control_q = Control_T / (2 * n_control) 
Control_q

Control_p2 = Control_p^2
Control_2pq = 2*Control_p*Control_q
Control_q2 = Control_q^2

Control_GG = 79
Control_GT = 178
Control_TT = 112


#Cancer
cancer = rbind(c(Cancer_GG, Cancer_GT, Cancer_TT), c(Cancer_GG/276, Cancer_GT/276, Cancer_TT/276),
               c(Cancer_p2*276, Cancer_2pq*276, Cancer_q2*276), c(Cancer_p2, Cancer_2pq, Cancer_q2))
colnames(cancer) = c("GG","GT","TT")
rownames(cancer) = c("obserwowana liczebnoœæ", "obserwowana czêstoœæ genotypów", "oczekiwana liczebnoœæ genotypów", "oczekiwana czêstoœæ genotypów")

#Control
control = rbind(c(Control_GG, Control_GT, Control_TT), c(Control_GG/369, Control_GT/369, Control_TT/369),
                c(Control_p2*369, Control_2pq*369, Control_q2*369), c(Control_p2, Control_2pq, Control_q2))
colnames(control) = c("GG","GT","TT")
rownames(control) = c("obserwowana liczebnoœæ", "obserwowana czêstoœæ genotypów", "oczekiwana liczebnoœæ genotypów", "oczekiwana czêstoœæ genotypów")

cancer2 = as.data.frame(t(cancer))
control2 = as.data.frame(t(control))

Chi2 = function(X,Y) {
  r = 2
  s = length(unique(Y))

  chi2 = numeric()
  k = 1
  
  for (i in 1:s) {
      chi2[k] = (X[i]-Y[i])^2 / X[i]
      k = k+1
  }
  
  stat_chi2 = sum(chi2)
  p_value = pchisq(stat_chi2, (r-1)*(s-1), lower.tail = FALSE)
  list(stat = stat_chi2, df = (r-1)*(s-1), p = p_value)
}

chi2cancer = Chi2(cancer2$`obserwowana liczebnoœæ`, cancer2$`oczekiwana liczebnoœæ genotypów`)
chi2control = Chi2(control2$`obserwowana liczebnoœæ`, control2$`oczekiwana liczebnoœæ genotypów`)

#OR
#GG/TT
OR1 = (Cancer_GG/Control_GG)/(Cancer_TT/Control_TT)
#GG+GT/TT
OR2 = (((Cancer_GG) + (Cancer_GT))/((Control_GG) + (Control_GT)))/((Cancer_TT)/(Control_TT))
#GG/GT+TT
OR3 = ((Cancer_GG/Control_GG)/((Cancer_TT+ Cancer_GT)/(Control_TT+ Control_GT)))

OR = data.frame(OR1, OR2, OR3)

cancer
control

chi2cancer
chi2control

OR