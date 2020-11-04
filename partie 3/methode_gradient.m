function fobj = methode_gradient(x0,maxiter)
    x = x0;
    for k=1:maxiter
        %... A COMPLETER ICI

        % Calcul et stockage de la fonction objectif en chaque itere
        [f,g]   = fct(x)
        fobj(k) = f;
    end
end

  % Entrées :
  % Q est une matrice n x n
  % c est un vecteur n x 1
  % p est un scalaire
  % x0 est l'itéré initial (vecteur n x 1)
  % maxiter est le nombre d'itérations à effectuer
  
  % Sorties :
  % x est vecteur n x 1
  % e est vecteur maxiter x 1
  
  L = max(eig(Q));
  x = x0 ;
  alpha = 1/L;
  
  for i=1:maxiter
    [f,delta] = fcalculator (Q, x, c, p);
    e(i) = 0.5*x'*Q*x-c'*x+p;
    % ICI :Algorithme à implémenter
	  x = x -alpha*delta';
    
    %Calcul de l'erreur
    
  end
end
