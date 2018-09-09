function re_similarity = objSimilarity(image1,objpos1,image2,objpos2)

[row1 column1] = size(objpos1);
[row2 column2] = size(objpos2);

vectorlist1 = [];
vectorlist2 = [];

for i = 1:row1
    objimage1 = image1(objpos1(i,1):objpos1(i,3),objpos1(i,2):objpos1(i,4),:);
    rgblbpobjimage1 = rgbLbpFeature(objimage1,0.05);
    objhistogram1 = lbpHistogram(rgblbpobjimage1);
    vectorlist1 = [vectorlist1 ; objhistogram1'];
end

for i = 1:row2
    objimage2 = image2(objpos2(i,1):objpos2(i,3),objpos2(i,2):objpos2(i,4),:);
    rgblbpobjimage2 = rgbLbpFeature(objimage2,0.05);
    objhistogram2 = lbpHistogram(rgblbpobjimage2);
    vectorlist2 = [vectorlist2 ; objhistogram2'];
end

re_similarity = calcVectorSimilartMatrix(vectorlist1,vectorlist2);
re_similarity = re_similarity';