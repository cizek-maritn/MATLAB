function X = DFT(x, N)
sum=0;
    for k=1:N
        for n=1:length(x)
            clen=x(n)*exp((-i*2*pi*(n-1)*(k-1))/N);
            sum=sum+clen;
        end
        X(k)=(1/N)*sum;
        sum=0;
    end
end