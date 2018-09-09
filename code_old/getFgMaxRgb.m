function re_image = getFgMaxRgb(image)

[row column num] = size(image);

re_image = zeros(row,column);

for i = 1:row
    for j = 1:column
        valuelist = max(image(i,j,:));
        re_image(i,j) = valuelist(1);
    end
end