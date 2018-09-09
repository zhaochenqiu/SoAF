function re_similar = getSimilarImg_SoAF(ftvector,mus_SoAF,sigmas_SoAF,weights_SoAF)

%mus_SoAF = model{1};
%sigmas_SoAF = model{2};
%weights_SoAF = model{3};

[row column byte num] = size(mus_SoAF);

re_similar = zeros(row,column,byte);

tempmatrix      = sum(weights_SoAF,4);
sumvaluematrix  = sum(tempmatrix,3);

% sumvaluematrix(100,100)
global sigmasrate_fg;


for i = 1:row
    for j = 1:column
        for m = 1:byte
            sumvalue = 0;
            for n = 1:num
                value = abs(ftvector(i,j,m) - mus_SoAF(i,j,m,n));
                
                if value < sigmasrate_fg * sigmas_SoAF(i,j,m,n)
                    sumvalue = sumvalue + weights_SoAF(i,j,m,n);
                end
            end
            
            re_similar(i,j,m) = sumvalue/sumvaluematrix(i,j);
        end
    end
end


