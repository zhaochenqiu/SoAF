function re_similarity = calcImageSmilarity(imgFeature,imgBkDicMus,imgBkSigmas,imgBkCount)

% Describe:�������ƶȺ���
%
% �������:
%    imgFeature:    ��ǰͼ�����õ�������
%    imgBkDicMus:   �������ʾ�ֵ
%    imgBkSigmas:   �������ʷ���
%    imgBkCount:    ��������Ȩֵ
%
% �������:
%    re_similarity: �������ص�λ�õ����ƶ�

[row column byte num] = size(imgBkDicMus);

re_similarity = zeros(row,column,byte);

tempmatrix      = sum(imgBkCount,4);
sumvaluematrix  = sum(tempmatrix,3);

sumvaluematrix(100,100)
sigmasrate = 2;     % ����������

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

