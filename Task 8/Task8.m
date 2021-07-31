close all;
clear all;
clc;

x = [1 2 3 4];
N = 6;


x = [x zeros(1, N-length(x))];
L = 3;
M = 2;

for l = 0:L-1
    for m = 0:M-1
        temp = m*L + l;
        Xn(l+1,m+1) = x(m*L + l + 1);
    end
end


Xk = zeros(L, M);

for p = 0:L-1
    for q = 0:M-1
        col_res = 0;
        for l = 0:L-1
            twi_N = exp(-1j*2*pi*l*q/N);
            row_res = 0;
            for m = 0:M-1
                twi_M = exp(-1j*2*pi*m*q/M);
                row_res = row_res + Xn(l+1, m+1) * twi_M;
            end
            twi_L = exp(-1j*2*pi*l*p/L);
            col_res = col_res + twi_N * row_res * twi_L;
        end
        Xk(p+1, q+1) = col_res;
    end
end

dft = reshape(Xk.',1,[]);
disp('Fast Fourier Transform using divide and conquer approach');
disp(dft);
disp('FFT using built in method');
disp(fft(x, N));


