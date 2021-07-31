function retval = falsa_pos_func (a, b, f)
    % Implementacao do método da falsa-posição para encontrar um zero para a funcao f.
    % [a, b] indica o intervalo considerado.
    % Implemente o método dando prioridade ao intervalo mais à esquerda sempre que possível.
    % A função deve retornar uma raiz da equação f(x) = 0.
    tolerance = 1e-6;

    while (true)
        c = a - (b - a) * f(a) / (f(b) - f(a));

        if (f(a) * f(c) < tolerance)
            b = c;
        else
            a = c;
        end

        if (abs(f(c)) < tolerance)
            retval = c;
            return
        end

    end
endfunction
