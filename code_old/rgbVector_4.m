function re_image = rgbVector_4(image)

[row column num] = size(image);
re_image = image;

for i = 1:row
    for j = 1:column
        valuelist = sum(image(i,j,:));
        value = valuelist(1);
        
        if value == 0
            value = 1;
        end
        
        for q = 1:num
            re_image(i,j,q) = 765*(image(i,j,q)/value);
            if re_image(i,j,q) > 255
                re_image(i,j,q) = 255;
            end
        end
    end
end
