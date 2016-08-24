function retval = dft (N = 128, z, m)
  go = @(n) feval(z,n) * exp( -2 * pi * J * m * n / N);

  retval = sum( arrayfun( go, 0 : (N - 1)) );
endfunction
