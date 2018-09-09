function [re_imgBkDicMus re_imgBkCount re_imgBkSigmas] = updateBkDic(imgFeature,imgBkDicMus,imgBkCount,imgBkSigmas)

% Describe:背景更新函数
%
% 输入参数:
%    imgFeature:    图像特征
%    imgBkDicMus:   保存的背景单词本
%    imgBkCount:    用于背景单词的计数器
%    imgBkSigmas:   背景方差
%
% 输出参数:
%    re_imgBkDicMus:    经过更新过后的背景单词均值
%    re_imgBkCount:     同上
%    re_imgBkSigmas:    同上


[row column byte num] = size(imgBkDicMus);

rate1 = 0.99;       % 均值更新速率
rate2 = 0.99;       % 方差更新速率

addthresholdlist = [4 8 8 8 2];     % 各个维度特征方差的最小值
sigmasinitialist = [4 8 8 8 2];     % 各个维度方差的初始值
sigmasrate = 1.2;   % 方差扩大倍数

for i = 1:row
    for j = 1:column
        
        for m = 1:byte
            judge = 0;
            for n = 1:num
                value = abs(imgFeature(i,j,m) - imgBkDicMus(i,j,m,n));
                
                if value < sigmasrate * imgBkSigmas(i,j,m,n)
                    imgBkCount(i,j,m,n) = imgBkCount(i,j,m,n) + 1;
                    
                    %if imgBkCount(i,j,m,n) > 1000       % 为了避免单个特征权限过大
                        %imgBkCount(i,j,m,n) = 800;
                    %end
                    
                    imgBkDicMus(i,j,m,n) = imgBkDicMus(i,j,m,n)*rate1 + imgFeature(i,j,m)*(1 - rate1);
                    imgBkSigmas(i,j,m,n) = imgBkSigmas(i,j,m,n)*rate2 + (value + addthresholdlist(m))*(1 - rate2);
                    judge = 1;
                end
            end
            
            if judge == 0

                for n = 1:num
                    imgBkCount(i,j,m,n) = imgBkCount(i,j,m,n) - 1;
                    if imgBkCount(i,j,m,n) == -1
                        imgBkCount(i,j,m,n) = 0;
                    end
                end
                
                pos = 1;
                value = imgBkCount(i,j,m,1);
                
                for n = 1:num
                    if imgBkCount(i,j,m,n) < value
                        value = imgBkCount(i,j,m,n);
                        pos = n;
                    end
                end
                
                imgBkDicMus(i,j,m,pos) = imgFeature(i,j,m);
                imgBkCount(i,j,m,pos) = 1;
                imgBkSigmas(i,j,m,pos) = sigmasinitialist(m);
            end
        end
    end
end

re_imgBkDicMus  = imgBkDicMus;
re_imgBkCount   = imgBkCount;
re_imgBkSigmas  = imgBkSigmas;