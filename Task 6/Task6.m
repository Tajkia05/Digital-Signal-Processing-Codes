clc;
clear all;
close all;

Xn = [1,2,3,4];
N = 8;

Xk = DFT(Xn, N);

%IDFT
x = zeros(1, N);

for n = 0:N-1
    temp = 1/N;
    res = 0;
    for k = 0:N-1
        res = res + Xk(k+1) * exp(1j*2*pi*k*n/N);
    end
    x(n+1) = round(res * temp);
end
   
x = nonzeros(x');
disp('Our Actual Xn: ');
disp(Xn);
disp('Signal found through IDFT: ');
disp(x);
disp('IDFT using built in method');
ifft(Xk)
