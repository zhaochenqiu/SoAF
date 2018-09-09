function re_feature = getImageFeature_3(image)

% Describe:ͼ��������ȡ����
% 
% ����˵��:
%    �������:
%        image  ����ͼ��
%
%    �������:
%        re_feature ��������
%            ��һάΪ�Ҷ�����
%            �ڶ�������άΪred,green,blue��ɫ����
%            ����5άΪ��������

[row column num] = size(image);

dealimage = image;

template = [1 2 1;2 4 2;1 2 1];

re_feature = zeros(row,column,5);
                                        % ��˹�˲�Ԥ����
dealimage(:,:,1) = convolution(image(:,:,1),template);
dealimage(:,:,2) = convolution(image(:,:,2),template);
dealimage(:,:,3) = convolution(image(:,:,3),template);
                                        
grayimg = grayImage(dealimage);         % ��ȡ�Ҷ�����

rgbimg = rgbVector_2(dealimage);        % ��ȡ��ɫ����
%rgbimg = rgbVector_4(dealimage);
siltpimg = siltpCodeingC(grayimg,0.1);  % ��ȡ��������

re_feature(:,:,1) = grayimg;            % ��Ӧά�ȸ�ֵ��Ӧ����
re_feature(:,:,2:4) = rgbimg;
re_feature(:,:,5) = siltpimg;
