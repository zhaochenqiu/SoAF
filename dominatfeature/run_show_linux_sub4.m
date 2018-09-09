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


path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fall/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fall';

format_img  = 'jpg';

% showDominant_SoAF();




clear all
run('../config/config_para_do');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = '~/dataset/dataset2014/dataset/baseline/highway/input';
path_save   = '~/dataset/CDN_2014/baseline/highway';

% showDominant_SoAF();



clear all
run('../config/config_para_do');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = '~/dataset/dataset2014/dataset/dynamicBackground/canoe/input';
path_save   = '~/dataset/CDN_2014/dynamicBackground/canoe';

% showDominant_SoAF();


clear all
run('../config/config_para_do');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = '~/dataset/dataset2014/dataset/dynamicBackground/fountain01/input';
path_save   = '~/dataset/CDN_2014/dynamicBackground/fountain01';

% showDominant_SoAF();



clear all
run('../config/config_para_test');

global path_img path_save format_img;

format_img  = 'jpg';
path_img    = '~/dataset/dataset2014/dataset/dynamicBackground/boats/input';
path_save   = '~/dataset/CDN_2014/dynamicBackground/boats';

showDominant_SoAF();


