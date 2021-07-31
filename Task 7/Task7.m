clc;
clear all;
close all;

x =[1 2 2 1];
h = [1 2 3];
N = 8;



Xk = DFT(x, N);
Hk = DFT(h, N);

Mk = Xk .* Hk;

yn = IDFT(Mk, N);
disp('FIR filter response using DFT and IDFT');
disp(yn);
disp('FIR filter response using built in method');
disp(conv(x, h));