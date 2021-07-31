function retval = secantes_func (x0, x1, f)
  % Implementacao do método das secantes para encontrar um zero para a funcao f.
  % x0 e x1 indicam duas aproximações iniciais para o zero.
  % df indica a função que computa a derivada de f(x).
  % A função deve retornar uma raiz da equação f(x) = 0.
  tolerance = 1e-5;

  while true
    if (f(x0) == f(x1))
      retval = x1;
      return 
    end
    
    x2 = x0 - (x1 - x0) * f(x0) / (f(x1) - f(x0));
    err = abs(x1 - x0);

    if (err < tolerance)
      retval = x2;
      return
    end

    x0 = x1;
    x1 = x2;
  end

  retval = x1;
endfunction
