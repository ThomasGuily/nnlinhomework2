clear all; clc;

% n est le nombre de donn�es a^(i)
n = 8;

% m est la dimension de ces donn�es a^(i)
m = 2;

% It�r� initial
x0 = rand(m+1,1);

% Nombre d'it�r�s
maxiter = 500;

obj_gradient = methode_gradient(x0,maxiter);
obj_gacceler = methode_gacceler(x0,maxiter);

% A d�commenter lorsque les m�thodes seront correctement imp�ment�es

%semilogy(obj_gradient);
%hold on;
%semilogy(obj_gacceler,'r') 