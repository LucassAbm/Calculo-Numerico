% Elimincao de Gauss
%
clc
format long

 n = 3;
 A = [3 -1 -1; 1 5 1; 1 1 7];
 b = [-2; 14; 24];
 x = [0; 0; 0];
 U = A; bG = b; L = eye(n);

% n = 3;
% A = [10 2 1; 1 5 1; 2 3 10];
% b = [7; -8; 6];
% x = [0; 0; 0];
% U = A; bG = b; L = eye(n);

%n = 3;
%A = [1 5 1; 0 -1 -1; 1 1 7];   %%% A = [0 -1 -1; 1 5 1; 1 1 7];
%b = [14; -2; 24];              %%% -> Essa eh a matriz inicial
%x = [0; 0; 0];
%U = A; bG = b; L = eye(n);

%Aplicar Elimincao de Gauss (1)

for k = 1 : n-1
  for i = k+1 : n
  L(i,k) = U(i,k)/U(k,k);
  U(i,k) = 0;
  for j = k+1 : n
      U(i,j) = U(i,j) - L(i,k)*U(k,j);
  end;
  bG(i) = bG(i) - L(i,k)*bG(k);
  end;
end;

%Resolver sistema triangular (2)

for i = n : -1 : 1  %%% for i = n to 1, step -1
    s = 0;
    for j = i+1 : n
        s = s+U(i,j)*x(j);
    end;
    x(i) = (bG(i) - s)/U(i,i);
end;

disp('O multiplicador eh: '); disp(U(i,k)/U(k,k));

%Imprimir U, bG, L e x.  %%% Qual o problema inicial do x na terceira matriz?
disp(U);
disp(bG);
disp(L);
disp(x);
disp(U*x);
disp(A*x);
