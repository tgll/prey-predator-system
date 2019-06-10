///// VARIABLES /////
H(1)=15
P(1)=17


T=50     // durée de la simulation
N=50000     // nombre de points voulus
dt=T/N     // pas

// proies //
a=120     // taux de naissance
b=5      // taux de décès (accidents + vieillesse)
c=20      // taux de morts par attaque de prédateurs
// prédateurs //
r=90      // taux de naissance des prédateurs en l'absence de proies
s=70      // taux de mort de prédateurs lié à la compétition


///// FONCTIONS & BOUCLES /////

for i=1:N
    P(i+1)=dt*P(i)*(r-s*(P(i)/H(i)))+P(i)
    H(i+1)=dt*H(i)*(a-b*H(i)-c*P(i))+H(i)
end

plot(H,P)

