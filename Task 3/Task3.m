clc;
clear all;
close all;

x = [-3, 2, -1, 1];
h = [-1, 0, -3, 2];

fold_h = fliplr(h);

conv(x,fold_h);
correlation = Convolution(x, fold_h);

%plotting
disp('X(n)');
disp(x);
disp('H(n)');
disp(h);
disp('Cross corelation of H(n) and X(n)');
disp(correlation);

red = 1/255*[205, 92,92];
green = 1/255*[85, 107, 47];
blue = 1/255*[70,130,180];
orange = 1/255*[255,165,0];
purple = 1/255*[186,85,211];
background = 1/255*[220,220,220];

fig = figure(3);
set(gcf, 'color', background, 'Position', [100,80,700,700]);

subplot(3,1,1)
stem(x , '*','color', green, 'LineWidth', 1);
title('x(n) = [-3, 2, -1, 1]');
ylabel('Amplitude');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-6,6]);

subplot(3,1,2)
stem(h , '*','color', red, 'LineWidth', 1);
title('H(n) = [-1, 0, -3, 2]');
ylabel('Amplitude');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-6,6]);

subplot(3,1,3)
stem(correlation , '*','color', orange, 'LineWidth', 1);
title('Cross corrleation of x(n) and h(n)');
xlabel('Sample points');
ylabel('Response');
grid on;
xlim([-10,10]);
ylim([-20,20]);