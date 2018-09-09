function re_vector = getImageVector(image)

[row column num] = size(image);

% 提取图像的rgb三个比值



re_vector = zeros(row,column,12);   

template = [1 2 1;2 4 2;1 2 1];

grayimage = grayImage(image);
convolutionimage = convolution(grayimage,template);
[siltpvector siltpimage] = siltpCoding(convolutionimage,0.1);

r_value = image(:,:,1);
g_value = image(:,:,2);
b_value = image(:,:,3);

all_value = r_value + g_value + b_value;

r_value = r_value ./ all_value;
g_value = g_value ./ all_value;
b_value = b_value ./ all_value;

re_vector(:,:,1) = grayimage;

re_vector(:,:,2) = r_value;
re_vector(:,:,3) = g_value;
re_vector(:,:,4) = b_value;

re_vector(:,:,5:12) = siltpvector;
