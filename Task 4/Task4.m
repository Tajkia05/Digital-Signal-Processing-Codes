clc;
clear all;
close all;

x = [1,2,3];

fold_x = fliplr(x);

xcorr(x,x);
autoCorrelation = Convolution(x, fold_x);

%plotting
disp('X(n)');
disp(x);
disp('Folded x(n)');
disp(fold_x);
disp('Cross corelation of H(n) and X(n)');
disp(autoCorrelation);

red = 1/255*[205, 92,92];
green = 1/255*[85, 107, 47];
blue = 1/255*[70,130,180];
orange = 1/255*[255,165,0];
purple = 1/255*[186,85,211];
background = 1/255*[220,220,220];

fig = figure(3);
set(gcf, 'color', background, 'Position', [100,80,700,700]);

x_x = 0:length(x)-1;
subplot(3,1,1)
stem(x_x, x , '*','color', green, 'LineWidth', 1);
title('x(n) = [-3, 2, -1, 1]');
ylabel('Amplitude');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-6,6]);

fold_xx = 0:length(fold_x)-1;
subplot(3,1,2)
stem(fold_xx, fold_x , '*','color', red, 'LineWidth', 1);
title('Folded_x');
ylabel('Amplitude');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-6,6]);

auto_x = 0:length(autoCorrelation)-1;
subplot(3,1,3)
stem(autoCorrelation , '*','color', orange, 'LineWidth', 1);
title('Auto corrleation of x(n) and Folded_x');
ylabel('Response');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-20,20]);