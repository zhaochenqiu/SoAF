function [grayftimg rftimg gftimg bftimg siltpftimg dominantimg] = getDominant(model)

mus_SoAF        = model{1};
sigmas_SoAF     = model{2};
weights_SoAF    = model{3};

[row_img column_img byte_img num_img] = size(mus_SoAF);

grayftimg   = squeeze(weights_SoAF(:,:,1,:));
rftimg      = squeeze(weights_SoAF(:,:,2,:));
gftimg      = squeeze(weights_SoAF(:,:,3,:));
bftimg      = squeeze(weights_SoAF(:,:,4,:));
siltpftimg  = squeeze(weights_SoAF(:,:,5,:));

colorlist = [   254 0   0
                40  250 40
                30  30  250
                100 100 200
                200  200 100];

colorlist = [   200 200   100
                40  250 40
                30  30  250
                100 100 200
                254 0 0];

colorlist = [   100 100 100
                150 10  10
                10  150 10
                10  10  150
                10  250 250
                0   0   0];


dominantimg = zeros(row_img,column_img,3);

weightsimg = zeros(row_img,column_img,5);

weightsimg(:,:,1) = sum(grayftimg,3);
weightsimg(:,:,2) = sum(rftimg,3);
weightsimg(:,:,3) = sum(gftimg,3);
weightsimg(:,:,4) = sum(bftimg,3);
weightsimg(:,:,5) = sum(siltpftimg,3);

for i = 1:row_img
    for j = 1:column_img
        list = weightsimg(i,j,:);
        pos = find(list == max(list));
        [row column] = size(pos);

        if row ~= 1 | column ~= 1
            pos = 6;
        end

        dominantimg(i,j,:) = colorlist(pos,:);
    end
end
