function re_image = rgbVector_2(image)

% Describe:图像颜色特征提取函数
%    特征运算公式为:   red = red/max(red,green,blue) 
%                   green = green/max(red,green,blue)
%                    blue = blue/max(red,green,blue)
%
% 参数说明:
%    输入参数:
%        image  输入图像
%
%    输出参数:
%        re_image 返回颜色特征

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
