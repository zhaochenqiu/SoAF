function [] = detection(data,truth);

% 参数说明:
%    输入参数:
%        data 图像序列数据，图像数据必须是一维

% imgsize为图像数据长度
% imgdeep为图像深度
% framenum为图像序列数量，及到底有多少帧图像

[imgsize imgdeep byte framenum] = size(data);

template    = [1 2 1;2 4 2;1 2 1];          % 用于高斯滤波
dicnum      = 4;                            % 单词最大数量

image = double(data(:,:,:,1));
[row column num] = size(image);

imgfeaturebk1 = getImageFeature_3(image);

imgBkDicMus     = zeros(row,column,5,dicnum);
imgBkDicCount   = zeros(row,column,5,dicnum);
imgBkDicSigmas  = zeros(row,column,5,dicnum);

imgBkDicMus(:,:,:,1)    = imgfeaturebk1;
imgBkDicCount(:,:,:,1)  = imgBkDicCount(:,:,:,1) + 1;
imgBkDicSigmas(:,:,:,1) = imgBkDicSigmas(:,:,:,1) + 2;

for i = 1:framenum
    fprintf(1,'Evaluating frame %d.... \n',i);
    
    image       = double(data(:,:,:,i));
    truthimg    = double(truth(:,:,:,i));
    
    tic
    imgfeature      = getImageFeature_3(image);     % 提取图像特征，灰度特征，颜色特征，纹理特征
    time1 = toc;

    tic
    imgSimilarity   = calcImageSmilarity(imgfeature,imgBkDicMus,imgBkDicSigmas,imgBkDicCount);
    time2 = toc;

    tic
    [imgBkDicMus imgBkDicCount imgBkDicSigmas] = updateBkDic(imgfeature,imgBkDicMus,imgBkDicCount,imgBkDicSigmas);
    time3 = toc;
    
    allSimilarty    = sum(imgSimilarity,3);
    finfgimage      = 1 - allSimilarty;
    
    thresholdfinfgimage = finfgimage;
    index = thresholdfinfgimage > 0.3;
    thresholdfinfgimage(index) = 255;
    index = ~index;
    thresholdfinfgimage(index) = 0;
                                                    % 利用不同的阈值进行阈值化，方便找到合适阈值
    dimage4 = doubleThreshold(finfgimage,0.6,0.2,4);
    dimage5 = doubleThreshold(finfgimage,0.6,0.1,3);
    dimage6 = doubleThreshold(finfgimage,0.6,0.1,4);
    dimage7 = doubleThreshold(finfgimage,0.6,0.2,4);
    truthfgimage = truthTreshold(truthimg,200);

    imageToFile(dimage4,finfgimage,i);

    alltime = time1 + time2 + time3;

    [time1 time2 time3 alltime]
    
    displayResult(i,finfgimage*255,dimage7,dimage6,dimage5,image ,truthfgimage ,thresholdfinfgimage,dimage4);
end 
