function re_ftimg = featureExtraction(img)

[row_img column_img byte_img] = size(img);

global g_template;

convimg = zeros(row_img,column_img,byte_img);
convimg = convimg + img;
convolution_c(convimg,img,g_template);

global g_siltpRate g_siltpRange;

grayimg     = grayImage(convimg);
hsv         = rgb2hsv(convimg);
himg = hsv(:,:,1)*255;
simg = hsv(:,:,2)*255;
vimg = hsv(:,:,3);

% displayMatrixImage(1,1,3,himg,simg,vimg)

%input('pause')
% rgbimg      = rgbVector_2(convimg);
siltpimg    = R_siltpCodingC(grayimg,g_siltpRate,g_siltpRange);
% siltpimg    = siltpCodingC(grayimg,g_siltpRate);



global g_vectorLen;

re_ftimg = zeros(row_img,column_img,g_vectorLen);

re_ftimg(:,:,1)     = grayimg;
re_ftimg(:,:,2)     = himg;
re_ftimg(:,:,3)     = simg;
re_ftimg(:,:,4)     = vimg;
%re_ftimg(:,:,2:4)   = rgbimg;
re_ftimg(:,:,5)     = siltpimg;
