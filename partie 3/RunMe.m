clear all; clc;

% n est le nombre de données a^(i)
n = 8;

% m est la dimension de ces données a^(i)
m = 2;

% Itéré initial
x0 = rand(m+1,1);

% Nombre d'itérés
maxiter = 500;

obj_gradient = methode_gradient(x0,maxiter);
obj_gacceler = methode_gacceler(x0,maxiter);

% A décommenter lorsque les méthodes seront correctement impémentées

%semilogy(obj_gradient);
%hold on;
%semilogy(obj_gacceler,'r') 