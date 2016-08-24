function retval = inverse_dft (N = 128, z, n)
  go = @(m) feval(z,m) * exp (2 * pi * J * n * m / N);

  retval = (1 / N) * sum( arrayfun( go, 0 : (N - 1) ));
endfunction
