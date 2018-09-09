function [] = imageToFile(image,finfgimage,num)


[trow tcolumn tnum] = size(image);
imagefile = zeros(trow,tcolumn,3);
tfinfgimage = round(finfgimage*255);

imagefile(:,:,1) = image(:,:,1);
imagefile(:,:,2) = image(:,:,1);
imagefile(:,:,3) = image(:,:,1);

numstr = num2str(num+100000);
numstr(1) = 48;
str = sprintf('D:\\result\\canoe\\fgimage\\bin%s.png',numstr);
imwrite(uint8(imagefile),str);

imagefile(:,:,1) = tfinfgimage(:,:,1);
imagefile(:,:,2) = tfinfgimage(:,:,1);
imagefile(:,:,3) = tfinfgimage(:,:,1);
str = sprintf('D:\\result\\canoe\\similarty\\bin%s.png',numstr);
imwrite(uint8(imagefile),str);