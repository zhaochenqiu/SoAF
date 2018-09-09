function [compare re_image] = getFgImage(image,mus,sigmas,weight,threshold)

[row column byte] = size(mus);
compare = zeros(row,column,byte);

for i = 1:byte
    compare(:,:,i) = abs(image - mus(:,:,i));
end

index_match = compare < 2 * sigmas;
index_unmatch = ~index_match;

re_match = index_match;
re_unmatch = index_unmatch;

tempweight = weight;
tempweight(index_unmatch) = 0;

judge = sum(tempweight,3);

re_image = image;

fgindex_match = judge > threshold;
fgindex_unmatch = ~fgindex_match;

re_image(fgindex_match) = 0;
re_image(fgindex_unmatch) = 255;

