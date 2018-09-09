function result = detection(data,num,point_row,point_column);

% 参数说明:
%    输入参数:
%        data 图像序列数据，图像数据必须是一维

% imgsize为图像数据长度
% imgdeep为图像深度
% framenum为图像序列数量，及到底有多少帧图像

% 修改:
%    统计算法直方图

[imgsize imgdeep byte framenum] = size(data);



result = [];

if num > framenum
    num = framenum;
end
num = framenum;
for i = 1:num
    fprintf(1,'Evaluating frame %d.... \n',i);
    
    image       = double(data(:,:,:,i));
    image1      = image(point_row - 10:point_row + 10, point_column - 10:point_column + 10,:);
    
   
%    imgfeature1      = getImageFeature_3(image1);     % 提取图像特征，灰度特征，颜色特征，纹理特征
    imgfeature1     = featureExtraction_plot(image1);
    result = [result ; imgfeature1(10,10,:)];
 
   %displayImage(i,uint8(imgfeature1(:,:,1)),uint8(imgfeature1(:,:,2)),uint8(imgfeature1(:,:,3)),uint8(imgfeature1(:,:,4)),uint8(20*imgfeature1(:,:,5)));
end 
