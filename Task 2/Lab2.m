clc;
clear all;
close all;

x = [1, 2, 3];
h = [-1, 2, 2];

lenx = length(x);
lenh = length(h);

len_op = lenx+lenh-1;
op = zeros(1, len_op);

padded_x = [x, zeros(1, lenh)];
disp('padded_X');
disp(padded_x)
padded_h = [h, zeros(1, lenx)];
disp('padded_h');
disp(padded_h)

lenX = length(padded_x);
conv(x,h);
for i = 1:len_op
    for j = 1:lenX
        if i-j+1 > 0
            op(i) = op(i) + padded_x(j) * padded_h(i-j+1);
        end
    end
end

%plotting
disp('X(n)');
disp(x);
disp('H(n)');
disp(h);
disp('Convolution of H(n) and X(n)');
disp(op);

red = 1/255*[205, 92,92];
green = 1/255*[85, 107, 47];
blue = 1/255*[70,130,180];
orange = 1/255*[255,165,0];
purple = 1/255*[186,85,211];
background = 1/255*[220,220,220];

fig = figure(2);
set(gcf, 'color', background, 'Position', [100,80,700,700]);

subplot(3,1,1)
stem(x , '*','color', green, 'LineWidth', 1);
title('x(n) = [1,2,3]');
ylabel('Amplitude');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-6,6]);

subplot(3,1,2)
stem(h , '*','color', red, 'LineWidth', 1);
title('H(n) = [-1,2,2]');
ylabel('Amplitude');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-6,6]);

subplot(3,1,3)
stem(op , '*','color', orange, 'LineWidth', 1);
title('Convolution of x(n) and h(n)');
ylabel('op[n]');
xlabel('Sample points');
grid on;
xlim([-10,10]);
ylim([-12,12]);