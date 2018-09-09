%clear all
close all
clc

run('../config/config_tool');

path_img = 'D:\dataset\dataset\baseline\highway\input';
format_img = 'jpg';

%[files_img data_img] = loadData_plus(path_img,format_img);

img = double(data_img(:,:,:,1));


[row_img column_img byte_img] = size(img);

dealimage = img;
image = img;

template = [1 2 1;2 4 2;1 2 1];

                                        % 高斯滤波预处理
dealimage(:,:,1) = convolution(image(:,:,1),template);
dealimage(:,:,2) = convolution(image(:,:,2),template);
dealimage(:,:,3) = convolution(image(:,:,3),template);

dealimage = round(dealimage);


convimg = zeros(row_img,column_img,byte_img);
convimg = convimg + img;
convolution_c(convimg,img,template);

convimg = round(convimg);



template = template/(sum(sum(template)));
matimg = img;
matimg = imfilter(img,template);
matimg = round(matimg);

subimg = abs(dealimage - convimg);
sum(sum(sum(subimg)))


subimg1 = abs(dealimage - matimg);
sum(sum(sum(subimg1)))



subimg2 = abs(convimg - matimg);
sum(sum(sum(subimg2)))






global g_displayMatrixImage;
g_displayMatrixImage = 1;
figure
displayMatrixImage(1,2,3,dealimage,convimg,subimg,matimg,subimg1,subimg2)
