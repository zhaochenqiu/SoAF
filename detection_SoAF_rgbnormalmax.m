function [] = detection_SoAF();

global path_img path_save format_img;

% load the video sequences
[files_img data_img] = loadData_plus(path_img,format_img);

[row_img column_img byte_img frames_img] = size(data_img);

img = double(data_img(:,:,:,1));

model_SoAF = initializeSoAF(img);


%mus_SoAF = model_SoAF{1};
%sigmas_SoAF = model_SoAF{2};
%weights_SoAF = model_SoAF{3};


% create the save path
if systemJudge() == 1
    % the system is a linux system
    path_save_similar   = [path_save '/similar/'];
    path_save_fgimg     = [path_save '/fgimg/'];
else
    % the system is a windows system
    path_save_similar   = [path_save '\similar\'];
    path_save_fgimg     = [path_save '\fgimg\'];
end




global g_displayMatrixImage;
g_displayMatrixImage = 1;

for i = 1:frames_img
    tic
    img_cur = double(data_img(:,:,:,i));
    filename    = files_img{i};
    time1 = toc;

    tic
    ftvector = featureExtraction(img_cur);
    % ftvector = getImageFeature_3(img_cur);
    time2 = toc;

    tic
    similar = getSimilarImg_SoAF(ftvector,model_SoAF);
    %time3_1 = toc;

    %tic
%    similar = getSimilarImg_SoAF_op(ftvector,model_SoAF{1},model_SoAF{2},model_SoAF{3});
%    similar = getSimilarImg_SoAF_op(ftvector,mus_SoAF,sigmas_SoAF,weights_SoAF);
    time3 = toc;



    tic
    model_SoAF = updateModel_SoAF(ftvector,model_SoAF);
%    [mus_SoAF sigmas_SoAF weights_SoAF] = updateModel_SoAF_op(ftvector,mus_SoAF,sigmas_SoAF,weights_SoAF);
    time4 = toc;

    toc
    allsimilar = sum(similar,3);
    simimg = 1 - allsimilar;

    thrimg = doubleThreshold(simimg,0.6,0.2,4);
    time5 = toc;


    % save the middle image
    filename = changeFileFormat(filename,'png');

    saveImage(simimg*255, path_save_similar,  filename);
    saveImage(thrimg,     path_save_fgimg,    filename);


    displayMatrixImage(i,1,3,img_cur,simimg*255,thrimg)

    alltime = time1 + time2 + time3 + time4 + time5;
    [i time1 time2 time3 time4 time5 alltime]
end

