clear;clc;

a = input('Ingrese el valor de a(inicio):\n');
b = input('Ingrese el valor de b(final):\n');
h = input('Ingrese el valor de h(incremento):\n');
grado = input('Ingrese el grado del polinomio:\n');



raices = [];
valores_coeficiente = obtener_valor(grado);


while(length(raices) ~= grado)
    raices = [];
    valor_x = a:h:b;
    for i = 1 : length(valor_x)
        valor_y = obtener_y(valor_x(i),valores_coeficiente, grado);
        if( round(valor_y) <= 0.000)
            raices = [raices valor_x(i)];
        end
    end
    h = h / 10;
end


mensaje = ['Las raíces de la función son: '];
disp(mensaje);
disp(num2str(raices));

function valores_coeficiente = obtener_valor(grado)
    valor = [];
    for i = 0 : grado
        mensaje2 = ['Ingrese el coeficiente de X^' num2str(grado - i) ':' '\n' ];
        if(i == grado)
            mensaje2 = ['Ingrese el término independiente:\n'];
        end
        coeficient = input(mensaje2);
        valor = [valor coeficient];
    end
    valores_coeficiente= valor;
end


function  valor_y = obtener_y(punto, valores_coeficiente, grado)
    valor = [];
    for i = 0 : grado
        coeficient = valores_coeficiente(i+1);
        valor_actual = power(punto, grado - i) * coeficient;
        valor = [valor valor_actual];
    end
    valor_y = sum(valor);
end

