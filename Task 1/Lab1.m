clc;
close all;
clear all;

n = 9;

%unit impulse signal
impulse_n = -n:n;
Delta_impulse_n = [zeros(1,n), 1, zeros(1,n)];
disp('Unit Impulse Signal:');
disp(Delta_impulse_n);

%unit step signal
step_n = 0:n;
U_step_n = ones(1,n+1);

disp('Unit Step Signal:');
disp(U_step_n);

%unit ramp
ramp_n = 0:n;
%Up_ramp_n = n.*1;
disp('Unit Ramp Signal:');
disp(ramp_n);

%exponential signal
a = 0.25;
n = -n:n;
an1 = (1.5).^(n);   %a>1
an2 = (0.055).^(n);   %0<a<1
an3 = (-0.5).^(n);  %-1<a<0
an4 = (-1.5).^(n);  %a<-1
disp('Exponential Signal:');
disp('a>1');
disp(an1);
disp('0<a<1');
disp(an2);
disp('-1<a<0');
disp(an3);
disp('a<-1');
disp(an4);

%plotting
%color codes
red = 1/255*[205, 92,92];
green = 1/255*[85, 107, 47];
blue = 1/255*[70,130,180];
orange = 1/255*[255,165,0];
purple = 1/255*[186,85,211];
background = 1/255*[220,220,220];

fig = figure(1);
set(gcf, 'color', background, 'Position', [100,80,700,700]);

subplot(4,1,1)
stem(impulse_n , Delta_impulse_n , '*','color', green, 'LineWidth', 1);
title('Unit Impulse Signal');
xlabel('Time');
ylabel('Amp');
grid on;
xlim([-10,10]);
ylim([-3,3]);

subplot(4,1,2)
stem(step_n, U_step_n , '*','color', orange, 'LineWidth', 1);
title('Unit Step Signal');
xlabel('Time');
ylabel('Amp');
grid on;
xlim([-15,15]);
ylim([-3,3]);

subplot(4,1,3)
stem(step_n, ramp_n , '*','color', red, 'LineWidth', 1);
title('Unit Ramp Signal');
xlabel('Time');
ylabel('Amp');
grid on;
xlim([-15,15]);
ylim([-10,10]);

subplot(4,1,4)
stem(n, an1, '*','color', purple, 'LineWidth', 1);
title('Exponential Signal');
xlabel('Time');
ylabel('Amp');
grid on;
xlim([-15,22]);
ylim([-10,45]);


