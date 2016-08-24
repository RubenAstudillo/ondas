graphics_toolkit('gnuplot')

N = 128;
x_array = 0 : (128 - 1);

y = abs(arrayfun( @(m) base_dft(N, m, )));
plot(x,y);

seven = arg(dft(7))
twelve = arg(dft(12))
