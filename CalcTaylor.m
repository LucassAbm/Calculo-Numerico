%%%%% Este programa calcula o valor de uma funcao por Serie de Taylor
%%%%% Taylor: f(x) = Sum(0,infty,f^(n)(a)/n!*(x - a)^n
function CalcTaylor
%clear all
%clc
format long

%seção de entrada de dados
disp('calculo da expansao de taylor de uma funcao em torno do ponto a = 0');
x = input('insira o valor de x: ');
N = input('insira o numero de termos da serie: ');

% s = 0;
% fac = 1;
% for n = 0 : (N - 1)       %%% Funcao exponencial
%     if (n > 0) fac = fac*n; end;
%     s = s + x^n/fac;
% end;

% s = 0;
% sig = 1;
% for n = 0 : N     %%% Funcao seno
%     if mod (n,2) == 1
%         s = s + sig*x^n/factorial(n);
%         sig = -sig;
%     end;
% end;

s = 0;
sig = 1;
for n = 0 : N     %%% Funcao cosseno
    if mod (n,2) == 0
        s = s + sig*x^n/factorial(n);
        sig = -sig;
    end;
end;

fprintf('Taylor: %12.10f\n',s);
fprintf('Exato : %12.10f\n',f(x));

end

function y = f(t)
  y = exp(t);
  %y = sin(t);
  %y = cos(t);
end