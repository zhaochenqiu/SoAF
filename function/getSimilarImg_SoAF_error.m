function re_similar = getSimilarImg_SoAF(ftvector,model)

mus_SoAF = model{1};
sigmas_SoAF = model{2};
weights_SoAF = model{3};

[row column byte num] = size(mus_SoAF);

re_similar = zeros(row,column,byte);

tempmatrix      = sum(weights_SoAF,4);
sumvaluematrix  = sum(tempmatrix,3);

% sumvaluematrix(100,100)
sigmasrate = 2;     % 方差扩大倍数

%{
for i = 1:row
    for j = 1:column
        posmark = -1;
        posvalue = -1;
        for m = 1:byte
            if sum(weights_SoAF(i,j,m,:)) > posvalue
                posvalue = sum(weights_SoAF(i,j,m,:));
                posmark = m;
            end
        end
        
        sumvalue = 0;
        for n = 1:num
            value = abs(ftvector(i,j,posmark) - mus_SoAF(i,j,posmark,n));

            if value < sigmasrate * sigmas_SoAF(i,j,posmark,n)
                sumvalue = sumvalue + weights_SoAF(i,j,posmark,n);
            end
        end

        re_similar(i,j,posmark) = sumvalue/sum(weights_SoAF(i,j,posmark));

    end
end
%}

for i = 1:row
    for j = 1:column
        for m = 1:byte
            sumvalue = 0;
            for n = 1:num
                value = abs(ftvector(i,j,m) - mus_SoAF(i,j,m,n));
                
                if value < sigmasrate * sigmas_SoAF(i,j,m,n)
                    sumvalue = sumvalue + weights_SoAF(i,j,m,n);
                end
            end
            
            re_similar(i,j,m) = sumvalue/sumvaluematrix(i,j);
        end
    end
end


