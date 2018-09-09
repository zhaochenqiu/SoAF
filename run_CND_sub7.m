clear all
close all
clc

global path_img path_save format_img;

% the tools used in algorithms are configured in the config_tool.m
run('config/config_tool');

clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/fluidHighway/input';
path_save =	'~/dataset/CDN_2014_2/nightVideos/fluidHighway';
detection_SoAF_1();


clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/streetCornerAtNight/input';
path_save =	'~/dataset/CDN_2014_2/nightVideos/streetCornerAtNight';
detection_SoAF_1();


clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/tramStation/input';
path_save =	'~/dataset/CDN_2014_2/nightVideos/tramStation';
detection_SoAF_1();


clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/winterStreet/input';
path_save =	'~/dataset/CDN_2014_2/nightVideos/winterStreet';
detection_SoAF_1();


clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/PTZ/continuousPan/input';
path_save =	'~/dataset/CDN_2014_2/PTZ/continuousPan';
detection_SoAF_1();

