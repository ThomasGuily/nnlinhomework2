clear all; close all; clc;
%load donnees.mat;
Q = [0, 1, 1;1,1,1;1,1,0];
c = [ 0;1;-1];
maxiter=10000;
p = 0;

%[e,x1, z1] = coordinatedescent(Q,c,p,x0,maxiter);
%visualizer(x1, z1, Q, c, p) ;
%[x_0,e_0]=gradient(Q,c,p,x0,maxiter);
%[x_1,e_1]=acceleratedgradient1(Q,c,p,x0,maxiter);
%[x_2,e_2]=acceleratedgradient2(Q,c,p,x0,maxiter);

%Solutions optimales
xopt=Q\c;
fopt = 0.5*xopt'*Q*xopt-c'*xopt+p


%Graphes des erreurs
%semilogy(1:maxiter,abs(e-fopt),'y'); hold on;%jauneconverge lentement 
%semilogy(1:maxiter,abs(e_0-fopt),'b'); hold on;%bleu converge assez vite
%semilogy(1:maxiter,abs(e_1-fopt),'g'); hold on;%vert converge plus vite que bleu
%semilogy(1:maxiter,abs(e_2-fopt),'r'); hold on;%bleu converge très rapidement
