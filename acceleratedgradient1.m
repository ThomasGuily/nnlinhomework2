function [x,e]=acceleratedgradient1(Q,c,p,x0,maxiter)
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
  y = x0;
  alpha_k   = 0.5;      % valeur initiale de alpha
	alpha_k1  = alpha_k;  % k1 represente l'iteree suivante (k+1)   
  
  for i=1:maxiter
    
    [f,  delta]  = fcalculator (Q, x, c, p);
    % pour calculer delta
    e(i) = 0.5*x'*Q*x-c'*x+p;
    % Calcul de l'erreur
    
    alpha_k1 = 0.5*(sqrt((alpha_k^4) + 4*(alpha_k^2)) - (alpha_k^2));    
    beta = (alpha_k*(1 - alpha_k)) / ((alpha_k^2) + alpha_k1);
    alpha_k1  = alpha_k;
    y  = x + beta*(x-x0);
    % cf enonce
    x0 = x;
    %x0 = x(i-1);
    
    
    [fY, deltaY] = fcalculator (Q, y, c, p);
    % calcule delta(y)
    x  = y - (1/L)*deltaY'; % ajouter ; pour ne pas imprimer a chaque iteree
    
    
    
    
  end
end
