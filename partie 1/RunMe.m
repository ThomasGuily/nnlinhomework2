
A = [-1 5 -2 2 ; 5 -4 5 4];
b = [1;-1];

% Trouvez le vecteur x tel que Ax=b minimisant la norme l2

Q = [eye(4), -A';A,zeros(2,2)];
c = [zeros(4,1);b];
xopt = (Q)/c';

% Trouvez le vecteur x tel que Ax=b minimisant la quantité 0.5*||Mx-v||_F^2
M = [0 1 1 0 ; -1 1 2 2 ; 1 -1 2 -1];
v = [0;1;-1];



% Trouvez le vecteur x tel que Ax=b minimisant la norme l1

Q = []

% Trouvez le vecteur x tel que Ax=b minimisant la norme linf