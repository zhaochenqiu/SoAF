function re_image = lbpCoding(image)

% Date:2014/3/22
% Describe:����lbp����

[row column byte] = size(image);

re_image = image;

for i = 2:row - 1
    for j = 2:column - 1
        matrix = image(i-1:i+1,j-1:j+1,1);  % ȡ��3*3�����
        value = matrix(2,2);
        index = matrix > value;
        value = sum(sum(index));
        value = 2 ^ value;
        
        re_image(i,j,:) = value;

    end
end