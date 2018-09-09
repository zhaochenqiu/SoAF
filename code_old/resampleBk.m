function [re_bkimagefeature re_weights] = resampleBk(bkimagefeature,imagefeature,weights)

[row column num] = size(weights);
re_bkimagefeature = bkimagefeature;
re_weights = weights;

for i = 1:row
    for j = 1:column
        value = 1.0;
        markpos = 1;
        for q = 1:num
            if weights(i,j,q) < value
                value = weights(i,j,q);
                markpos = q;
            end
        end
        
        if value < 0.01
            re_weights(i,j,markpos) = 0.01;
            re_bkimagefeature(i,j,:,markpos) = imagefeature(i,j,:);
        end
    end
end