function re_histogram = lbpHistogram(lbpimage)

[row column num] = size(lbpimage);

re_histogram = zeros(num*9,1);

for i = 1:row
    for j = 1:column
        for q = 1:num
            pos = lbpimage(i,j,q);
            pos = pos + (q - 1)*9 + 1;
            
            re_histogram(pos,1) = re_histogram(pos,1) + 1;
        end
    end
end