function[op] = Convolution(x, h)

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









