function [x, U] = gauss_elim(A,b)
tempMat=A; tempVek=b;
if ~any(A)
    [tempMat, sortIdx]=sortrows(A,'descend');
    tempVek=tempVek(sortIdx);
elseif (A(1,1) == 0)
    [tempMat, sortIdx]=sortrows(A,'descend');
    tempVek=tempVek(sortIdx);
end

%singularita
    if (det(tempMat) <= 10^-20 && det(tempMat) >= -10^-20)
    error('singular')
    end
%prevod matice
for i=1:(length(tempMat)-1)
    koef1=tempMat(i,i);
    for j=(i+1):length(tempMat)
        koef2=- tempMat(j,i);
        koef=koef2/koef1;
        radek1=tempMat(i,:).*koef;
        radek2=tempMat(j,:);
        tempMat(j,:) = radek1+radek2;
        tempVek(j)=tempVek(j)+tempVek(i).*koef;
    end
end
U=tempMat
for i=1:length(U)
    if U(i,:) == zeros(1,length(U))
        error ('singular')
    end
end


%vypocet x
x=zeros(length(tempVek),1);
for i=1:length(tempVek)
    pos=length(tempVek)+1-i;
    sum=0;
    for j=1:length(tempVek)
        if j ~= pos
            sum=sum+((U(pos,j).*x(j)));
            
        end
    end
    
    %x(pos)=tempVek(pos)./U(pos,pos) - sum
    x(pos)= (tempVek(pos)-sum)/U(pos,pos);
    
    
end
x
end