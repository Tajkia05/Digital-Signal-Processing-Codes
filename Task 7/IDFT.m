function[Xn] = IDFT(Xk, N)

Xn = zeros(1, N);

for n = 0:N-1
    temp = 1/N;
    res = 0;
    for k = 0:N-1
        res = res + Xk(k+1) * exp(1j*2*pi*k*n/N);
    end
    Xn(n+1) = round(res * temp);
end
    
Xn = nonzeros(Xn');