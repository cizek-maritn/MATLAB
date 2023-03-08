function b = float2bin(number,dec_length)
int=fix(number);
decimal=number-int;
for i = 11:-1:0
    if int >= 2^i
        binInt(12-i)=1;
        int=int-2^i;
    else
        binInt(12-i)=0;
    end
end

for i=1:dec_length
    if decimal >= 2^-i
        binDec(i)=1;
        decimal=decimal-2^-i;
    else
        binDec(i)=0;
    end
end

str1=strip(sprintf('%d',binInt),"left",'0');
str2='.';
str3=strip(sprintf('%d',binDec),"right",'0');
if str1 == ""
    str1='0';
    b=append(str1,str2,str3)
elseif str3 == ""
    b=str1
else
    b=append(str1,str2,str3)
end
end