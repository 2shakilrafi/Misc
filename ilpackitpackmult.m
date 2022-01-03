function C = ilpackitpackmult (coefA, jcoefA, B)

[m,n] = deal(size(coefA,1), max(max(jcoefA))); 

if n ~= size(B,1) 
    printf("Dimensions do not match for multiplication")
    return;
end

C = zeros(m,1);
for i = 1:mA
    rowi = zeros(1,nA);
    rowi(jcoefA(i,:)) = coefA(i,:); 
    C(i) = dot(rowi,B);
end

end

