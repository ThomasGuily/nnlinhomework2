function fobj = methode_gradient(x0,maxiter)
    x = x0;
    for k=1:maxiter
        %... A COMPLETER ICI

        % Calcul et stockage de la fonction objectif en chaque itere
        [f,g]   = fct(x)
        fobj(k) = f;
    end
end

  % Entr�es :
  % Q est une matrice n x n
  % c est un vecteur n x 1
  % p est un scalaire
  % x0 est l'it�r� initial (vecteur n x 1)
  % maxiter est le nombre d'it�rations � effectuer
  
  % Sorties :
  % x est vecteur n x 1
  % e est vecteur maxiter x 1
  
  L = max(eig(Q));
  x = x0 ;
  alpha = 1/L;
  
  for i=1:maxiter
    [f,delta] = fcalculator (Q, x, c, p);
    e(i) = 0.5*x'*Q*x-c'*x+p;
    % ICI :Algorithme � impl�menter
	  x = x -alpha*delta';
    
    %Calcul de l'erreur
    
  end
end
