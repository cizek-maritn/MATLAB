clc; clear all; close all; echo off;

key = 'matlab';
text = 'AHOJJAJSEMTVUJSUPERPOMOCNIK';

i = 1;
j = 1;
keyNums = double(key);
keySorted = zeros(1, length(key));
[c cisla] = sort(keyNums);

while i <= length(c)
    while j <= length(c)
        if c(i) == keyNums(j) && keySorted(j) == 0
            keySorted(j) = i;
            break;
        end
        j=j+1;
    end
    i=i+1;
    j=1;
end

k = 1;
l = 1;
i = 1;
j = 1;
while i <= size(text, 2)
    M(k, l) = text(i);
    l = l + 1;
    if mod(i, 6) == 0
        k = k+1;
        l = 1;
    end
i=i+1;
end

i=1;
while i<=length(keySorted)
    while j <= length(keySorted)
        if i == keySorted(j)
            cipher{i} = M(:,j)';
        end
        j=j+1;
    end
i=i+1;
j=1;
end

strjoin(cipher, '')