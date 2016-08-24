function retval = dft_matrix(dim)
  for i = 0:(dim - 1)
    for j = 0:(dim - 1)
      retval(i+1,j+1) = exp (-2 * pi * J * i * j / dim);
    endfor
  endfor
endfunction
