function [x]= invcramer(M)
[r c] = size(M);
D = ones(r,c);   
T=M;
for i = 1:r
    for k = 1:c
        T([i],:)=[];  
        T(:,[k])=[];   
        D(i,k) = ((-1)^(i+k))* detY(T);  
        T=M;  
    end  
end
T=detY(M);
x=(1/T)*D';
