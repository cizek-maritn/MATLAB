clc;
close all;
clear all;

% data 
load('digits_test.mat');
               
load('digits_tren.mat');
 acc=0;

% porovnani vzdalenosti
for i=1:1000
    current=test_data(i,:,:);
    correct=test_trida(i);
for j = 1:9000
    v = tren_data(j, :, :);
    dist(j) = sum(sum(abs(current - v)));
end
[min_dist, index] = min(dist);
nejblizsi_trida = tren_trida(index);
if correct==tren_trida(index)
    acc=acc+1;
end
if mod(i,10)==0
    p= double(acc/i);
    disp([num2str(i), ' uspesnost ', num2str(p) ])
end
%disp (['Obrázek rozpoznán jako ', num2str(nejblizsi_trida)])
end

