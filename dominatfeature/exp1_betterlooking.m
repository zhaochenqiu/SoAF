clear all
close all
clc

run('../config/config_tool');
addpath('./data/');

grayimg = double(imread('2.png'));
clrrimg = double(imread('3.png'));
clrgimg = double(imread('4.png'));
clrbimg = double(imread('5.png'));
textimg = double(imread('1.png'));

fall_img = double(imread('in000400.png'));

[row_img column_img byte_img] = size(fall_img);

colorlist = [200 200 100
             40  250 40
             30  30  250
             100 100 200
             254 0   0];

showimg = zeros(row_img,column_img,byte_img);





indexr = fall_img(:,:,1) == 254;
indexg = fall_img(:,:,2) == 0;
indexb = fall_img(:,:,3) == 0;

index = indexr&indexg&indexb;

textimg = textimg(1:row_img,1:column_img,:);

for i = 1:byte_img
    timg    = textimg(:,:,i);
    tempimg = showimg(:,:,i);
    tempimg(index) = timg(index);
    showimg(:,:,i) = tempimg;
end


indexr = fall_img(:,:,1) == 200;
indexg = fall_img(:,:,2) == 200;
indexb = fall_img(:,:,3) == 100;

index = indexr&indexg&indexb;

textimg = grayimg(1:row_img,1:column_img,:);

for i = 1:byte_img
    timg    = textimg(:,:,i);
    tempimg = showimg(:,:,i);
    tempimg(index) = timg(index);
    showimg(:,:,i) = tempimg;
end



indexr = fall_img(:,:,1) == 40;
indexg = fall_img(:,:,2) == 250;
indexb = fall_img(:,:,3) == 40;

index = indexr&indexg&indexb;

textimg = clrrimg(1:row_img,1:column_img,:);

for i = 1:byte_img
    timg    = textimg(:,:,i);
    tempimg = showimg(:,:,i);
    tempimg(index) = timg(index);
    showimg(:,:,i) = tempimg;
end



indexr = fall_img(:,:,1) == 30;
indexg = fall_img(:,:,2) == 30;
indexb = fall_img(:,:,3) == 250;

index = indexr&indexg&indexb;

textimg = clrgimg(1:row_img,1:column_img,:);

for i = 1:byte_img
    timg    = textimg(:,:,i);
    tempimg = showimg(:,:,i);
    tempimg(index) = timg(index);
    showimg(:,:,i) = tempimg;
end



indexr = fall_img(:,:,1) == 100;
indexg = fall_img(:,:,2) == 100;
indexb = fall_img(:,:,3) == 200;

index = indexr&indexg&indexb;

textimg = clrbimg(1:row_img,1:column_img,:);

for i = 1:byte_img
    timg    = textimg(:,:,i);
    tempimg = showimg(:,:,i);
    tempimg(index) = timg(index);
    showimg(:,:,i) = tempimg;
end




global g_displayMatrixImage
g_displayMatrixImage = 1;
figure
displayMatrixImage(1,1,1,showimg)


