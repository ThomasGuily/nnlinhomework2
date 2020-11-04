function [x,e]=acceleratedgradient2(Q,c,p,x0,maxiter)
  % Entrees :
  % Q est une matrice n x n
  % c est un vecteur n x 1
  % p est un scalaire
  % x0 est l'itere initial (vecteur n x 1)
  % maxiter est le nombre d'iterations a effectuer
  
  % Sorties :
  % x est vecteur n x 1
  % e est vecteur maxiter x 1
  
  L = max(eig(Q));
  x = x0;
  
  for i=1:maxiter
    
    [f,  delta] = fcalculator (Q, x0, c, p);
    %calcule delta
    
    e(i) = 0.5*x'*Q*x-c'*x+p;
    %Calcul de l'erreur
    
    beta = (i - 1)/(i + 2);
  	y = x + beta*(x - x0);
    %CF enonce
    
    x0 = x ;
    %x0 = x(i-1);
    
    [fY, deltaY] = fcalculator (Q, y, c, p);
    %calcule delta(y)
    x= y - (1/L)*deltaY';
    %mise à jour de X
    
    
    
    
  end
end
