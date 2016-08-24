function retval = dft (N = 128, z, m)

  retval = sum( arrayfun( @(n) feval(z,n) * exp(-2 * pi * J * m * n) ,
                          0 : (N - 1) )
              );
endfunction
