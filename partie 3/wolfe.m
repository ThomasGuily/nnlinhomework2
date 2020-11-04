function alpha=wolfe(x,d,alpha0)
    % Entrees :
    % x est l'itéré courant qui est un vecteur de taille m+1
    % d est la direction de recherche qui est un vecteur de taille m+1
    % alpha0 est le pas initial
    % beta1 est un paramètre
    % beta2 est un paramètre
    % lambda est un paramètre

    % Sorties, ce fichier wolfe.m doit renvoyer :
    % alpha, un pas vérifiant les conditions de Wolfe

    % Parametres pour les conditions de Wolfe
    beta1  = 0.1;
    beta1  = 0.9;
    lambda = 2;

    aleft  = 0;
    aright = inf;
    alpha  = alpha0;
    while 1
        if w1(x,d,alpha,beta1)==true && w2(x,d,alpha,beta2)==true
            break;
        end
        if w1(x,d,alpha,beta1)==false
            %... A COMPLETER ICI
        elseif w2(x,d,alpha,beta2)==false
            %... A COMPLETER ICI
        end
     end
end