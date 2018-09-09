function re_feature = rgbLbpFeature(image,para)

[row column num] = size(image);

re_feature = image;

for i = 1:num
    re_feature(:,:,i) = siltpCodeingC(image(:,:,i),para);
end