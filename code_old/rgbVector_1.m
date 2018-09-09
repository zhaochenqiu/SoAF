function re_image = rgbVector_1(image)

[row column num] = size(image);
re_image = image;

for i = 1:row
    for j = 1:column
        value = sum(image(i,j,:));
        
        if value == 0
            value = 1;
        end
        
        for q = 1:num
            re_image(i,j,q) = 765*(image(i,j,q)/value);
        end
    end
end