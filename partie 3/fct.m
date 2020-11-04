function [f,g]=fct(x)
  % Entrees :
  % x est l'itéré courant qui est un vecteur de taille m+1
  
  % Sorties, ce fichier fct.m doit renvoyer :
  % f : evaluation de la fonction en l'itere courant x (f est donc scalaire)
  % g : evaluation du gradient en l'itere courant x (g est donc un vecteur de taille m+1 x 1)
  
  
  % DONNEES
  % a est une matrice de taille n x m (n donnees et chacune est de dimension m)
  % b est un vecteur de taille n x 1 composé de 1 ou 0
  a=[1 2 ; 1 3 ; 2 2 ; 2 3 ; 2 2.5 ; 2 1 ; 3 1 ; 3 2];
  b=[1;1;1;1;0;0;0;0];
  
  
  [n,m] = size(a);
  f = 0;
  g = zeros(m+1,1);
  
    for i=1:n
        if b(i)==0
            exposant = -x'*[1;a(i,:)'];
            f = f + (-log(1-(1/(1+exp(exposant)))));
            g = g + exp (1)/(1+exp (exposant));
        end
        if b(i)==1
            exposant = -x'*[1;a(i,:)'];
            f = f + (-log(1/(1+exp(exposant))));
            g = g + exp (1)/(1+exp (exposant));
        end
    end
end
