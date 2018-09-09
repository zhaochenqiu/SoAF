function re_similarty = calcVectorSimilartMatrix(vectorlist1,vectorlist2)

[row1 column1] = size(vectorlist1);
[row2 column2] = size(vectorlist2);

re_similarty = zeros(row1,row2);

for i = 1:row1
    for j = 1:row2
        value1 = sum(abs(vectorlist1(i,:) - vectorlist2(j,:)));
        value2 = sum(vectorlist1(i,:)) + sum(vectorlist2(j,:));
        
        value2 = max(value2,1);
        value1 = value1/value2;
        
        re_similarty(i,j) = value1;
        
    end
end