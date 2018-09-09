function [] = detection_SoAF();

global path_img path_save format_img;

% load the video sequences
[files_img data_img] = loadData_plus(path_img,format_img);

[row_img column_img byte_img frames_img] = size(data_img);

img = double(data_img(:,:,:,1));

model_SoAF = initializeSoAF(img);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% the old code of SoAF
global g_template;
dicnum = 3;

image = double(data_img(:,:,:,1));
[row column num] = size(image);

imgfeaturebk1 = getImageFeature_3(image);

imgBkDicMus     = zeros(row,column,5,dicnum);
imgBkDicCount   = zeros(row,column,5,dicnum);
imgBkDicSigmas  = zeros(row,column,5,dicnum);

imgBkDicMus(:,:,:,1)    = imgfeaturebk1;
imgBkDicCount(:,:,:,1)  = imgBkDicCount(:,:,:,1) + 1;
imgBkDicSigmas(:,:,:,1) = imgBkDicSigmas(:,:,:,1) + 2;
% the end of old code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


global g_displayMatrixImage;
g_displayMatrixImage = 1;

for i = 1:frames_img
    fprintf(1,'Evaluating frame %d.... \n',i);

    tic
    img_cur = double(data_img(:,:,:,i));
    time1 = toc;

    tic
    ftvector = featureExtraction(img_cur);
    time2 = toc;

    tic
    similar = getSimilarImg_SoAF(ftvector,model_SoAF);
    time3 = toc;

    tic
    model_SoAF = updateModel_SoAF(ftvector,model_SoAF);
    time4 = toc;

    toc
    allsimilar = sum(similar,3);

    simimg = 1 - allsimilar;

    fgimg = doubleThreshold(simimg,0.6,0.2,4);
    time5 = toc;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % the old code
    image       = double(data_img(:,:,:,i));

    imgfeature      = getImageFeature_3(image);     % 提取图像特征，灰度特征，颜色特征，纹理特征

    imgSimilarity   = calcImageSmilarity(imgfeature,imgBkDicMus,imgBkDicSigmas,imgBkDicCount);
    [imgBkDicMus imgBkDicCount imgBkDicSigmas] = updateBkDic(imgfeature,imgBkDicMus,imgBkDicCount,imgBkDicSigmas);

    allSimilarty    = sum(imgSimilarity,3);
    finfgimage      = 1 - allSimilarty;

    dimage7 = doubleThreshold(finfgimage,0.6,0.2,4);
    % the end of old code
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    subimg1 = abs(simimg - finfgimage);
    subimg2 = abs(fgimg - dimage7);


    subvector = abs(ftvector - imgfeature);

    subtex = abs(ftvector(:,:,5)*20 - imgfeature(:,:,5)*20);
    % testing if the same
    displayMatrixImage(i,3,5,ftvector(:,:,1),ftvector(:,:,2),ftvector(:,:,3),ftvector(:,:,4),ftvector(:,:,5)*20,...
                             imgfeature(:,:,1),imgfeature(:,:,2),imgfeature(:,:,3),imgfeature(:,:,4),imgfeature(:,:,5)*20,...
                             subvector(:,:,1),subvector(:,:,2),subvector(:,:,3),subvector(:,:,4),subvector(:,:,5)*255);

    % displayMatrixImage(i,2,3,img_cur,simimg,fgimg,image,finfgimage,dimage7)
    %displayMatrixImage(i,2,3,img_cur,simimg,fgimg,image,subimg1*255,subimg2*255);
%     displayMatrixImage(i,3,3,img_cur,simimg,fgimg,image,finfgimage,dimage7,img_cur,subimg1,subimg2)
    alltime = time1 + time2 + time3 + time4 + time5;
    [i time1 time2 time3 time4 time5 alltime]
    %}
end

