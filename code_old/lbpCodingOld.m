function re_vector = lbpCodingOld(image)

% 最传统的ibp编码

[row column num] = size(image);

re_vector = zeros(row,column,8);

for i = 2:row - 1
    for j = 2:column - 1
        matrix = image(i-1:i+1,j-1:j+1,1);  % 取出3*3矩阵块
        value = matrix(2,2);
        index = matrix > value;
        
        re_vector(i,j,1) = index(1,1);
        re_vector(i,j,2) = index(1,2);
        re_vector(i,j,3) = index(1,3);
        
        re_vector(i,j,4) = index(2,1);
        re_vector(i,j,5) = index(2,3);
       
        re_vector(i,j,6) = index(3,1);
        re_vector(i,j,7) = index(3,2);
        re_vector(i,j,8) = index(3,3);
    end
end