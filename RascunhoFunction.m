function RascunhoFunction
%Seção de entrada de dados

a = input('Primeiro número: ');
b = input('Segundo número: ');

%Seção de processamento
disp( 'processando...');

if (2 > 1)
    d = a;
    a = b;
    b = d;
end
c = g(a) + g(b);

%Seção de saída

disp('a: '); disp(a);
disp('b: '); disp(b);
fprintf('Resposta: %5.2f \n', c);
%disp ('teste.. ');

end

function y = g(t)
%y = t;
y = t^2;
%y = t^3;
end