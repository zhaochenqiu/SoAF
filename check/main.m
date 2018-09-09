clear all
close all
clc

run('../config/config_tool');



path1 = 'D:\dataset\CDN\dynamicBackground\canoe\similar';
path2 = 'D:\result\canoe\similarty';
format_img = 'png';

% run('config/config_tool');

[files_img2 data_img2] = loadData_plus(path2,format_img);

[files_img1 data_img1] = loadData_plus(path1,format_img);
[row_img column_img byte_img frames_img] = size(data_img1);

global g_displayMatrixImage
g_displayMatrixImage = 1;

for i = 1:frames_img
    img1 = double(data_img1(:,:,:,i));
    img2 = double(data_img2(:,:,:,i));

    timg2 = sum(img2,3);
    timg2 = timg2/3;

    subimg = abs(img1 - timg2);
    sum(sum(subimg))

    displayMatrixImage(i,1,3,img1,img2,subimg)
end




