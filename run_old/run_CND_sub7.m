clear all
close all
clc

global path_img path_save format_img;

% the tools used in algorithms are configured in the config_tool.m
run('config/config_tool');

clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/fluidHighway/input';
path_save =	'~/dataset/CDN_2014/nightVideos/fluidHighway';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/streetCornerAtNight/input';
path_save =	'~/dataset/CDN_2014/nightVideos/streetCornerAtNight';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/tramStation/input';
path_save =	'~/dataset/CDN_2014/nightVideos/tramStation';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/winterStreet/input';
path_save =	'~/dataset/CDN_2014/nightVideos/winterStreet';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/PTZ/continuousPan/input';
path_save =	'~/dataset/CDN_2014/PTZ/continuousPan';
detection_SoAF();

