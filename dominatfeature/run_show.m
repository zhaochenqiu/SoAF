clear all
close all
clc

global path_img path_save format_img;

% the tools used in algorithms are configured in the config_tool.m
run('../config/config_tool');

% the parameter of algorithms is configured in config_para_do

clear all
run('../config/config_para_do');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = 'D:\dataset\dataset\dynamicBackground\fall\input';
path_save   = 'D:\dataset\CDN\dynamicBackground\fall';

showDominant_SoAF();



clear all
run('../config/config_para_do');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = 'D:\dataset\dataset\baseline\PETS2006\input';
path_save   = 'D:\dataset\CDN\baseline\PETS2006';

showDominant_SoAF();



clear all
run('../config/config_para_do');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = 'D:\dataset\dataset\baseline\highway\input';
path_save   = 'D:\dataset\CDN\baseline\highway';

showDominant_SoAF();



clear all
run('../config/config_para_do');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = 'D:\dataset\dataset\dynamicBackground\canoe\input';
path_save   = 'D:\dataset\CDN\dynamicBackground\canoe';

showDominant_SoAF();


clear all
run('../config/config_para_do');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = 'D:\dataset\dataset\dynamicBackground\fountain01\input';
path_save   = 'D:\dataset\CDN\dynamicBackground\fountain01';

showDominant_SoAF();


