mainmafunction retval = newton_func (x, f, df)
  % Implementacao do método de Newton para encontrar um zero para a funcao f.
  % x indica a aproximação inicial para o zero.
  % df indica a função que computa a derivada de f(x).
  % A função deve retornar uma raiz da equação f(x) = 0.
  tolerance = 1e-12;
  k = 0;

  while true
    xi = x - f(x) / df(x);
    err = abs(xi - x);
    k = k + 1;

    if (err < tolerance || k > 100)
      retval = xi;
      return
    else
      x = xi;
    end
  end

  retval = x;
endfunction
