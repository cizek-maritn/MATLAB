clear %pracoval jsem sam
close all
clc
C = randn(round(rand*30)+10,round(rand*30)+10,round(rand*30)+10)
for k=1:size(C)
    a = sum(mean(C(k,:)))
end
D = squeeze(C(1,:,:));
for k=1:size(D,1)
    D(k,:) = D(k,:)-mean(D(k,:))
end
y = D
function y=mojefunkce(x)
y=sin(x).*sin(x).*cos(x);
end