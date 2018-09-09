function re_image = rgbVector(image);

[row column num] = size(image);

re_image = zeros(row,column);

for i = 1:row
    for j = 1:column
        value1 = image(i,j,1);
        value2 = image(i,j,2);
        value3 = image(i,j,3);
        
        re_image(i,j) = abs(value1 - value2) + abs(value2 - value3) + abs(value3 - value1);
    end
end