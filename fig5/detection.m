function result = detection(data,num,point_row,point_column);

% ����˵��:
%    �������:
%        data ͼ���������ݣ�ͼ�����ݱ�����һά

% imgsizeΪͼ�����ݳ���
% imgdeepΪͼ�����
% framenumΪͼ�������������������ж���֡ͼ��

% �޸�:
%    ͳ���㷨ֱ��ͼ

[imgsize imgdeep byte framenum] = size(data);



result = [];

if num > framenum
    num = framenum;
end
num = framenum;
for i = 1:num
    fprintf(1,'Evaluating frame %d.... \n',i);
    
    image       = double(data(:,:,:,i));
    image1      = image(point_row - 10:point_row + 10, point_column - 10:point_column + 10,:);
    
   
%    imgfeature1      = getImageFeature_3(image1);     % ��ȡͼ���������Ҷ���������ɫ��������������
    imgfeature1     = featureExtraction_plot(image1);
    result = [result ; imgfeature1(10,10,:)];
 
   %displayImage(i,uint8(imgfeature1(:,:,1)),uint8(imgfeature1(:,:,2)),uint8(imgfeature1(:,:,3)),uint8(imgfeature1(:,:,4)),uint8(20*imgfeature1(:,:,5)));
end 
