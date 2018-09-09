clear all
close all
clc

run('../config/config_tool.m');
addpath('./gmm/');

% path_img    = 'E:\dataset\dataset\dynamicBackground\canoe\input';
path_img    = 'E:\dataset\dataset2014\dataset\dynamicBackground\canoe\input';
path_img    = 'E:\dataset\dataset2014\dataset\baseline\highway\input';

path_save_R_siltp = 'E:\dataset\R_siltp\highway';
path_save_siltp   = 'E:\dataset\siltp\highway';


path_img    = 'E:\dataset\dataset2014\dataset\dynamicBackground\canoe\input';
path_img    = 'E:\dataset\dataset2014\dataset\baseline\office\input';

path_save_R_siltp = 'E:\dataset\R_siltp\office';
path_save_siltp   = 'E:\dataset\siltp\office';




path_img    = 'E:\dataset\dataset2014\dataset\dynamicBackground\canoe\input';

path_save_R_siltp = 'E:\dataset\R_siltp\canoe';
path_save_siltp   = 'E:\dataset\siltp\canoe';





path_img    = 'E:\dataset\dataset2014\dataset\dynamicBackground\canoe\input';
path_img    = 'E:\dataset\dataset2014\dataset\baseline\pedestrians\input';

path_save_R_siltp = 'E:\dataset\R_siltp\pedestrians';
path_save_siltp   = 'E:\dataset\siltp\pedestrians';



path_img    = 'E:\dataset\dataset2014\dataset\dynamicBackground\canoe\input';
path_img    = 'E:\dataset\dataset2014\dataset\baseline\PETS2006\input';

path_save_R_siltp = 'E:\dataset\R_siltp\PETS2006';
path_save_siltp   = 'E:\dataset\siltp\PETS2006';






format_img  = 'jpg';

% [files_img data_img] = loadData_plus(path_img,format_img);
[files_img data_img] = loadData_files(path_img,format_img);

[row_img frames_img] = size(files_img);

% [row_img column_img byte_img frames_img] = size(data_img);

filename = files_img{1};


img = double(imread([path_img '\' filename]));
%img = double(data_img(:,:,:,1));

[row_img column_img byte_img] = size(img);

grayimg = grayImage(img);

R_siltpimg = R_siltpCodingC(grayimg,0.1,1);
[vector siltpimg] = siltpCoding(grayimg,0.1);


num = 3;
mus_R_siltp     = zeros(row_img,column_img,num);
sigmas_R_siltp  = zeros(row_img,column_img,num);
weight_R_siltp  = zeros(row_img,column_img,num);

mus_siltp       = zeros(row_img,column_img,num);
sigmas_siltp    = zeros(row_img,column_img,num);
weight_siltp    = zeros(row_img,column_img,num);


mus_R_siltp(:,:,1)  = R_siltpimg;
mus_siltp(:,:,1)    = siltpimg;

sigmas_R_siltp  = sigmas_R_siltp + 2;
sigmas_siltp    = sigmas_siltp + 2;

weight_R_siltp(:,:,1)   = 1;
weight_siltp(:,:,1)     = 1;


global gmm_fgrate;
global gmm_uprate;
global update_mus update_sig update_wei;

gmm_fgrate = 1.6;
gmm_uprate = 10;

update_mus = 0.95;
update_sig = 0.95;
update_wei = 1.05;

threshold_R_siltp   = 0.5;
threshold_siltp     = 0.5;



% the system is a windows system
path_save_similar_R_siltp   = [path_save_R_siltp '\similar\'];
path_save_fgimg_R_siltp     = [path_save_R_siltp '\fgimg\'];

path_save_similar_siltp   = [path_save_siltp '\similar\'];
path_save_fgimg_siltp     = [path_save_siltp '\fgimg\'];



global g_displayMatrixImage
g_displayMatrixImage = 1;
figure
for i = 1:frames_img
%    img = double(data_img(:,:,:,i));
    filename    = files_img{i};

    img = double(imread([path_img '\' filename]));

    grayimg = grayImage(img);

    R_siltpimg          = R_siltpCodingC(grayimg,0.1,1);
    [vector siltpimg]   = siltpCoding(grayimg,0.1);

    gmm_uprate = 1;
    [compare_R_siltp fgimg_R_siltp similarity_R_siltp]  = getFgImage(   R_siltpimg, mus_R_siltp,sigmas_R_siltp, weight_R_siltp, threshold_R_siltp);
    [mus_R_siltp sigmas_R_siltp weight_R_siltp]         = updateBkImage(R_siltpimg, mus_R_siltp,sigmas_R_siltp, weight_R_siltp, threshold_R_siltp);

    gmm_uprate = 30;
    [compare_siltp fgimg_siltp similarity_siltp]        = getFgImage(   siltpimg,   mus_siltp,  sigmas_siltp,   weight_siltp,   threshold_siltp);
    [mus_siltp sigmas_siltp weight_siltp]               = updateBkImage(siltpimg,   mus_siltp,  sigmas_siltp,   weight_siltp,   threshold_siltp);


    bkimg_R_siltp   = getBestBkImage(mus_R_siltp,weight_R_siltp);
    bkimg_siltp     = getBestBkImage(mus_siltp,weight_siltp);


    filename = changeFileFormat(filename,'png');

    saveImage((1 - similarity_R_siltp)*255, path_save_similar_R_siltp , filename);
    saveImage((1 - similarity_siltp)*255,   path_save_similar_siltp,    filename);

    saveImage(fgimg_R_siltp,    path_save_fgimg_R_siltp,filename);
    saveImage(fgimg_siltp,      path_save_fgimg_siltp,  filename);


    displayMatrixImage(i,2,3,(1 - similarity_R_siltp)*255,bkimg_R_siltp*30,  fgimg_R_siltp, ...
                             (1 - similarity_siltp)*255,  bkimg_siltp,    fgimg_siltp);

end

