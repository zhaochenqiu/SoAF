function [re_compare re_image re_fgimage] = getFgVectorImage_1(image,vector,musvector,sigmas,weights)

[row column vmun mnum] = size(musvector);
re_image = image;
re_fgimage = image;
re_compare = sigmas;

for i = 2:row - 1
    for j = 2:column - 1
        
        judge = 0;
        threshold = 0; 
        for q = 1:mnum
            index = vector(i - 1:i + 1,j - 1:j + 1,:) ~= musvector(i - 1:i + 1,j - 1:j + 1,:,q);
            value = sum(sum(sum(index)));
            judge = judge + value*weights(i,j,q);
            threshold = threshold + sigmas(i,j,q)*weights(i,j,q);
            re_compare(i,j,q) = judge;
        end

        re_image(i,j) = judge;
        if judge > threshold + 10
            re_fgimage(i,j) = 255;
        else
            re_fgimage(i,j) = 0;
        end

    end
end

