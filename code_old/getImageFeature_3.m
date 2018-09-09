function re_feature = getImageFeature_3(image)

% Describe:图像特征提取函数
% 
% 参数说明:
%    输入参数:
%        image  输入图像
%
%    输出参数:
%        re_feature 返回特征
%            第一维为灰度特征
%            第二到第四维为red,green,blue颜色特征
%            第三5维为纹理特征

[row column num] = size(image);

dealimage = image;

template = [1 2 1;2 4 2;1 2 1];

re_feature = zeros(row,column,5);
                                        % 高斯滤波预处理
dealimage(:,:,1) = convolution(image(:,:,1),template);
dealimage(:,:,2) = convolution(image(:,:,2),template);
dealimage(:,:,3) = convolution(image(:,:,3),template);
                                        
grayimg = grayImage(dealimage);         % 提取灰度特征

rgbimg = rgbVector_2(dealimage);        % 提取颜色特征
%rgbimg = rgbVector_4(dealimage);
siltpimg = siltpCodeingC(grayimg,0.1);  % 提取纹理特征

re_feature(:,:,1) = grayimg;            % 对应维度赋值对应特征
re_feature(:,:,2:4) = rgbimg;
re_feature(:,:,5) = siltpimg;
