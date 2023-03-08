clear all;
close all;
clc;

% načetní signálů
[sig, Fs] = audioread('DOBRYDEN.WAV');
[h, Fs2] = audioread('Reverb4.wav');

% transpozice signálů na řádkový vektor a doplnění nulami
sig = sig';
h = [h' zeros(1, length(sig) - length(h))];

y = my_conv(sig, h);

% poměr hlasitosti původního signálu a ozvěny
a = 1.0;
b = 0.5;

% doplnění nulami pro možnost součtu
sig = [sig zeros(1, length(y) - length(sig))];

% původní signál
sound(sig.*a, Fs);

pause(2);

% mix původního signálu a ozvěny
sound((sig.*a + y.*b)/(a+b), Fs);

subplot(3,1,1);
plot(sig)
title('Původní signál');
subplot(3,1,2);
plot(h)
title('Impulsní odezva');
subplot(3,1,3);
plot(y)
title('Výsledek konvoluce');


 
function y = my_conv(x,h)
y=zeros(1,2*length(x)-1);
    for k=1:2*length(x)-1
        for n=1:2*length(x)-1
            if k<=length(x) && (n-k+1)<=length(h) && (n-k+1)>0
                
            clen=x(k)*h(n-k+1);
            y(n)=y(n)+clen;
            else
            
            end
        end
        
    end
end