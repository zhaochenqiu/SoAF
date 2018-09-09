function [] = detection_SoAF();

global path_img path_save format_img;

% load the video sequences
[files_img data_img] = loadData_plus(path_img,format_img);

[row_img column_img byte_img frames_img] = size(data_img);

img = double(data_img(:,:,:,1));

%model_SoAF = initializeSoAF(img);
model_SoAF = initializeSoAF_do(img);



% create the save path
if systemJudge() == 1
    % the system is a linux system
    path_save_similar   = [path_save '/similar/'];
    path_save_fgimg     = [path_save '/fgimg/'];
    path_save_domin     = [path_save '/dominant/'];
else
    % the system is a windows system
    path_save_similar   = [path_save '\similar\'];
    path_save_fgimg     = [path_save '\fgimg\'];
    path_save_domin     = [path_save '\dominant\'];
end


global g_displayMatrixImage;
g_displayMatrixImage = 1;

for i = 1:frames_img
    tic
    img_cur = double(data_img(:,:,:,i));
    filename    = files_img{i};
    time1 = toc;

    tic
    ftvector = featureExtraction_do(img_cur);
    time2 = toc;

    tic
    time3 = toc;

    tic
    model_SoAF = updateModel_SoAF(ftvector,model_SoAF);
    time4 = toc;

    tic
    [grayftimg rftimg gftimg bftimg siltpftimg dominantimg] = getDominant(model_SoAF);
    time5 = toc;

    % save the middle image

    filename = changeFileFormat(filename,'png');

%    saveImage(simimg*255, path_save_similar,  filename);
%    saveImage(thrimg,     path_save_fgimg,    filename);
    saveImage(dominantimg,     path_save_domin,    filename);

    size(grayftimg)
    size(rftimg)
    size(gftimg)
    size(bftimg)
    size(siltpftimg)
    size(dominantimg)


%    displayMatrixImage(i,1,2,img_cur,dominantimg)
%    displayMatrixImage(i,2,3,grayftimg,rftimg,gftimg,bftimg,siltpftimg,dominantimg)
%    displayMatrixImage(i,1,3,img_cur,simimg*255,thrimg)

    alltime = time1 + time2 + time3 + time4 + time5;
    [i time1 time2 time3 time4 time5 alltime]
end



