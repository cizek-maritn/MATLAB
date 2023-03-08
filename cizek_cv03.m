clear            %pracoval jsem sam
close all
clc
A = randn(10,20)
B = round(A)
B = sort(B);
q = size(B,1);
k = size(B,2);
for i = 1:k
    for j = 1:k-1
        for l = 1:q
            if mojefunkce(B , j , l , q)
                temp = B(:,j);
                B(:,j) = B(:,j+1);
                B(:,j+1) = temp;
            end
        end
    end
end
B
function y=mojefunkce(B , j , l , q)
    y = B(q-l+1,j) > B(q-l+1,j+1)      %pokud je jen (l,J), vyhodi to v poradi
end                                    %od lexik. nejmensiho po nejvetsi
