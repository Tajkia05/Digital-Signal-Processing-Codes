function[Xk] = DFT(Xn, N)

len = length(Xn);

if N>len
   Xn = [Xn  zeros(1, N-len)];
end

Xk = zeros(1,N);

for k = 0:N-1
    for n = 0:N-1
        Xk(k+1) = Xk(k+1) + Xn(n+1) * exp(-(1j*2*pi*k*n)/N);
    end
end