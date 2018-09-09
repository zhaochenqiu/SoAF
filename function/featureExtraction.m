function re_ftimg = featureExtraction(img)

[row_img column_img byte_img] = size(img);

global g_template;
convimg = imfilter(img,g_template);

global g_siltpRate g_siltpRange;

grayimg     = grayImage(convimg);
rgbimg      = rgbVector_2(convimg);
siltpimg    = R_siltpCodingC(grayimg,g_siltpRate,g_siltpRange);
% siltpimg    = siltpCodeingC(grayimg,g_siltpRate);



global g_vectorLen;

re_ftimg = zeros(row_img,column_img,g_vectorLen);

re_ftimg(:,:,1)     = grayimg;
re_ftimg(:,:,2:4)   = rgbimg;
re_ftimg(:,:,5)     = siltpimg;
