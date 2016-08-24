2

function retval = test2(n)
  retval = test1(:,n);
endfunction

function retval = fourier_inverse (n)
  go = @(m) dft(:, @test2, m);

  retval = inverse_dft(: , go, n);
endfunction

fourier_inverse(9)
test2(9)
## Funciona
