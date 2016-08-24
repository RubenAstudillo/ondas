function retval = dft (z)
  # z es el array de N elementos
  N = length(z);

  # hipotesis: N es un numero par
  M = N / 2;

  for i = 1:M
    for j = 1:M
      basesM(i,j) = exp(-2 * pi * J * (i - 1) * (j - 1)/M);
    endfor
  endfor

  for i = 1:M
    u(i) = z(2*i - 1);
  endfor
  dft_u = basesM * transpose(u);

  for i = 1:M
    v(i) = z(2*i);
  endfor
  dft_v = basesM * transpose(v);

  dft_u
  dft_v

  for i = 1:M
    retval(i) = dft_u(i) + exp(-2 * pi * J * (i - 1) / N) * dft_v(i);
  endfor
  for i = (M + 1):N
    j = i - M;
    retval(i) = dft_u(j) - exp(-2 * pi * J * (j - 1) / N) * dft_v(j);
  endfor
endfunction
