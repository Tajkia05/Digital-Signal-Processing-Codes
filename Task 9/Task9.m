close all;
clear all;
clc;

xn = [1 2 3 1];
N = 8;
x = [xn zeros(1, N - length(xn))];

f1 = x(1:2:N); % even components
f2 = x(2:2:N); % odd components

F1 = DFT(f1, length(f1));
F2 = DFT(f2, length(f2));


for k = 0:N/2-1
    twi_N = exp(-1j*2*pi*k/N);
    Xk(k+1) = F1(k+1) + twi_N * F2(k+1);
    
    Xk(k+N/2+1) = F1(k+1) - twi_N * F2(k+1);
end

disp('FFT using Radix-2 algorithm');
disp(Xk);

disp('FFT using built in method');
disp(fft(xn, N));