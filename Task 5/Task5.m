clc;
clear all;
close all;
warning('off');

Xn = [1, 2,3, 4];
disp('Signal Xn');
disp(Xn);
N = 8;
disp('N for N point DFT');
disp(N);

%DFT
len = length(Xn);
if N>len
    disp('N must be less than the length of x(n)');
end
if N>len
   Xn = [Xn  zeros(1, N-len)];
end

Xk = zeros(1,N);

for k = 0:N-1
    for n = 0:N-1
        Xk(k+1) = Xk(k+1) + Xn(n+1) * exp(-(1j*2*pi*k*n)/N);
    end
end

disp('The 8 point DFT is');
disp(Xk);
disp('* point DFT using built in method');
fft(Xn, N);

red = 1/255*[205, 92,92];
green = 1/255*[85, 107, 47];
%blue = 1/255*[70,130,180];
%orange = 1/255*[255,165,0];
%purple = 1/255*[186,85,211];
background = 1/255*[220,220,220];

fig = figure(3);
set(gcf, 'color', background, 'Position', [100,80,700,700]);

xnx = 0:length(Xn)-1;
subplot(2,1,1)
stem(xnx, Xn , '*','color', green, 'LineWidth', 1);
title('Xn = [1,2,3,4]');
ylabel('Amplitude');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-15,15]);

Xx = 0:length(Xk)-1;
subplot(2,1,2)
stem(Xx, Xk , '*','color', red, 'LineWidth', 1);
title('Xk');
ylabel('Xk');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-15,15]);



