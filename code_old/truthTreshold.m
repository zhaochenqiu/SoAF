function re_image = truthTreshold(truth,para)

[row column num] = size(truth);

re_image = zeros(row,column,1);

tempindex = truth > para;

index_match = tempindex(:,:,1);
index_unmatch = ~index_match;

re_image(index_match) = 255;
re_image(index_unmatch) = 0;