function re_similarity = calcImageSmilarity(imgFeature,imgBkDicMus,imgBkSigmas,imgBkCount)

% Describe:计算相似度函数
%
% 输入参数:
%    imgFeature:    当前图像所得到的特征
%    imgBkDicMus:   背景单词均值
%    imgBkSigmas:   背景单词方差
%    imgBkCount:    背景单词权值
%
% 输出参数:
%    re_similarity: 各个像素点位置的相似度

[row column byte num] = size(imgBkDicMus);

re_similarity = zeros(row,column,byte);

tempmatrix      = sum(imgBkCount,4);
sumvaluematrix  = sum(tempmatrix,3);

sumvaluematrix(100,100)
sigmasrate = 2;     % 方差扩大倍数

for i = 1:row
    for j = 1:column
        for m = 1:byte
            sumvalue = 0;
            for n = 1:num
                value = abs(imgFeature(i,j,m) - imgBkDicMus(i,j,m,n));
                
                if value < sigmasrate * imgBkSigmas(i,j,m,n)
                    sumvalue = sumvalue + imgBkCount(i,j,m,n);
                end
            end
            
            re_similarity(i,j,m) = sumvalue/sumvaluematrix(i,j);
        end
    end
end

