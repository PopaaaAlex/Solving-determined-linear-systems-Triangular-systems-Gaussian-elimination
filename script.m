format long
clear;
n = 4;
A = randn(n);
L = tril(A);
U = triu(A);
b = randn(n,1);
x1 = s_inf_tr(L,b);
x2 = s_sup_tr(U,b);
norm(L*x1-b);
norm(U*x2-b);
A_t = [1,2,7; 3,9,2; 5,5,1];
%%A_t = g(A_t);
%%A_t
[A_t,p] = gpp(A_t);
A_t
%%q1 = zeros(3,1);
%%[A_t,p1,q1] = gpc(A_t);
%%A_t


