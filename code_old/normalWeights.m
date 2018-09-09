function re_weights = normalWeights(weights)

[row column num] = size(weights);
re_weights = weights;

for i = 1:row
    for j = 1:column
        sumvalue = sum(weights(i,j,:));
        
        if sumvalue == 0
            sumvalue = 1;
        end
        
        re_weights(i,j,:) = re_weights(i,j,:)/sumvalue;
    end
end