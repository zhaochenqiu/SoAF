function [re_mus_SoAF re_sigmas_SoAF re_weights_SoAF] = updateModel_SoAF(ftvector,mus_SoAF,sigmas_SoAF,weights_SoAF)

%mus_SoAF        = model{1};
%sigmas_SoAF     = model{2};
%weights_SoAF    = model{3};

[row column byte num] = size(mus_SoAF);

global rate1 rate2;
%rate1 = 0.99;       % 均值更新速率
%rate2 = 0.99;       % 方差更新速率

global addthresholdlist sigmasinitialist sigmasrate;
% addthresholdlist = [4 8 8 8 2];     % 各个维度特征方差的最小值
%sigmasinitialist = [4 8 8 8 2];     % 各个维度方差的初始值
% sigmasrate = 1.2;   % 方差扩大倍数

%addthresholdlist = [4 8 8 8 8];     % 各个维度特征方差的最小值
%sigmasinitialist = [4 8 8 8 8];     % 各个维度方差的初始值
for i = 1:row
    for j = 1:column
        
        for m = 1:byte
            judge = 0;
            for n = 1:num
                value = abs(ftvector(i,j,m) - mus_SoAF(i,j,m,n));
                
                if value < sigmasrate * sigmas_SoAF(i,j,m,n)
                    weights_SoAF(i,j,m,n) = weights_SoAF(i,j,m,n) + 1;
                    
                    %if weights_SoAF(i,j,m,n) > 1000       % 为了避免单个特征权限过大
                        %weights_SoAF(i,j,m,n) = 800;
                    %end
                    
                    mus_SoAF(i,j,m,n) = mus_SoAF(i,j,m,n)*rate1 + ftvector(i,j,m)*(1 - rate1);
                    sigmas_SoAF(i,j,m,n) = sigmas_SoAF(i,j,m,n)*rate2 + (value + addthresholdlist(m))*(1 - rate2);
                    judge = 1;
                end
            end
            
            if judge == 0

                for n = 1:num
                    weights_SoAF(i,j,m,n) = weights_SoAF(i,j,m,n) - 1;
                    if weights_SoAF(i,j,m,n) == -1
                        weights_SoAF(i,j,m,n) = 0;
                    end
                end
                
                pos = 1;
                value = weights_SoAF(i,j,m,1);
                
                for n = 1:num
                    if weights_SoAF(i,j,m,n) < value
                        value = weights_SoAF(i,j,m,n);
                        pos = n;
                    end
                end
                
                mus_SoAF(i,j,m,pos) = ftvector(i,j,m);
                weights_SoAF(i,j,m,pos) = 1;
                sigmas_SoAF(i,j,m,pos) = sigmasinitialist(m);
            end
        end
    end
end

re_mus_SoAF  = mus_SoAF;
re_weights_SoAF   = weights_SoAF;
re_sigmas_SoAF  = sigmas_SoAF;
