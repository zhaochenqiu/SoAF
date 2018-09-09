[a,b,c] = fileparts(mfilename('fullpath')) ;
[a,b,c] = fileparts(a);
root = a ;

addpath(fullfile(root,'function'));
addpath(fullfile(root,'code_old'));

%addpath(fullfile(root,'gmm'));
%addpath(fullfile(root,'segmentation'));



if systemJudge() == 1
    addpath('~/projects/imageprocessing/common');
    addpath('~/projects/imageprocessing/common_c');
else

    if exist('E:') == 0
        addpath('D:\projects\Matlab\imageprocessing\common');
        addpath('D:\projects\Matlab\imageprocessing\common_c');
    else
        addpath('E:\projects\Matlab\imageprocessing\common');
        addpath('E:\projects\Matlab\imageprocessing\common_c');
    end
end

