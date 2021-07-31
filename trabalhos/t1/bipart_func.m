function retval = bipart_func (a, b, f)
    x = (a + b) / 2;
    tolerance = 1e-12;
    
    err = (b - a);

    while (abs(err) > tolerance)

        if (f(a) * f(x) < 0)
            b = x;
        else
            a = x;
        end

        x = (a + b) / 2;
        err = (b - a);
    endwhile

    retval = x;
endfunction
