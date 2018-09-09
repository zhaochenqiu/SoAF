function re_model = initializeSoAF(img)

[row_img column_img byte_img] = size(img);

global g_vectorLen g_modelLen;

ftvector = featureExtraction(img);
%ftvector = getImageFeature_3(img);

mus_SoAF        = zeros(row_img,column_img,g_vectorLen,g_modelLen);
sigmas_SoAF     = zeros(row_img,column_img,g_vectorLen,g_modelLen);
weights_SoAF    = zeros(row_img,column_img,g_vectorLen,g_modelLen);

mus_SoAF(:,:,:,1)       = ftvector;
sigmas_SoAF(:,:,:,1)    = sigmas_SoAF(:,:,:,1) + 2;
weights_SoAF(:,:,:,1)   = weights_SoAF(:,:,:,1) + 1;

re_model = {mus_SoAF,sigmas_SoAF,weights_SoAF};
