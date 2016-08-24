function result = base_dft( N = 128, index, n )
  result = (1 / sqrt(N)) * exp( 2 * pi * J * index * n / N);
endfunction
