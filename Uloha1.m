clear all;
clc;
% data 
test_soubor = 'c6_p0001_v03.jpg';
tren_soubor = ['c5_p0001_v02.jpg';'c6_p0001_v02.jpg';'c7_p0001_v02.jpg';'c8_p0001_v02.jpg';'c9_p0001_v02.jpg';
               'c0_p0001_v02.jpg';'c1_p0001_v02.jpg';'c2_p0001_v02.jpg';'c3_p0001_v02.jpg';'c4_p0001_v02.jpg'];
               
% porovnani vzdalenosti
x = imread(test_soubor);
for j = 1:10
    v = imread(tren_soubor(j, :));
    dist(j) = sum(sum(abs(x - v)));
    
end

% vyhodnoceni
[min_dist, index] = min(dist);
tren_trida = [5 6 7 8 9 0 1 2 3 4];
nejblizsi_trida = tren_trida(index);
disp (['Obr�zek rozpozn�n jako ', num2str(nejblizsi_trida)])

