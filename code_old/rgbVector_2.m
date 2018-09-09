function re_image = rgbVector_2(image)

% Describe:ͼ����ɫ������ȡ����
%    �������㹫ʽΪ:   red = red/max(red,green,blue) 
%                   green = green/max(red,green,blue)
%                    blue = blue/max(red,green,blue)
%
% ����˵��:
%    �������:
%        image  ����ͼ��
%
%    �������:
%        re_image ������ɫ����

[row column num] = size(image);
re_image = image;

for i = 1:row
    for j = 1:column
        valuelist = max(image(i,j,:));
        value = valuelist(1);
        
        if value == 0
            value = 1;
        end
        
        for q = 1:num
            re_image(i,j,q) = 255*(image(i,j,q)/value);
        end
    end
end
