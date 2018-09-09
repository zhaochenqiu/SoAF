function re_image = rgbVector_3(image)

[row column num] = size(image);
re_image = image;

for i = 1:row
    for j = 1:column
        for q = 1:num
            re_image(i,j,q) = image(i,j,q);
        end
    end
end