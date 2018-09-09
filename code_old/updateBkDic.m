function [re_imgBkDicMus re_imgBkCount re_imgBkSigmas] = updateBkDic(imgFeature,imgBkDicMus,imgBkCount,imgBkSigmas)

% Describe:�������º���
%
% �������:
%    imgFeature:    ͼ������
%    imgBkDicMus:   ����ı������ʱ�
%    imgBkCount:    ���ڱ������ʵļ�����
%    imgBkSigmas:   ��������
%
% �������:
%    re_imgBkDicMus:    �������¹���ı������ʾ�ֵ
%    re_imgBkCount:     ͬ��
%    re_imgBkSigmas:    ͬ��


[row column byte num] = size(imgBkDicMus);

rate1 = 0.99;       % ��ֵ��������
rate2 = 0.99;       % �����������

addthresholdlist = [4 8 8 8 2];     % ����ά�������������Сֵ
sigmasinitialist = [4 8 8 8 2];     % ����ά�ȷ���ĳ�ʼֵ
sigmasrate = 1.2;   % ����������

for i = 1:row
    for j = 1:column
        
        for m = 1:byte
            judge = 0;
            for n = 1:num
                value = abs(imgFeature(i,j,m) - imgBkDicMus(i,j,m,n));
                
                if value < sigmasrate * imgBkSigmas(i,j,m,n)
                    imgBkCount(i,j,m,n) = imgBkCount(i,j,m,n) + 1;
                    
                    %if imgBkCount(i,j,m,n) > 1000       % Ϊ�˱��ⵥ������Ȩ�޹���
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