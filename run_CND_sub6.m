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

path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/tramCrossroad_1fps/input';
path_save =	'~/dataset/CDN_2014_2/lowFramerate/tramCrossroad_1fps';
detection_SoAF_1();


clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/tunnelExit_0_35fps/input';
path_save =	'~/dataset/CDN_2014_2/lowFramerate/tunnelExit_0_35fps';
detection_SoAF_1();


clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/turnpike_0_5fps/input';
path_save =	'~/dataset/CDN_2014_2/lowFramerate/turnpike_0_5fps';
detection_SoAF_1();


clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/bridgeEntry/input';
path_save =	'~/dataset/CDN_2014_2/nightVideos/bridgeEntry';
detection_SoAF_1();


clear all;
global path_img path_save format_img;
run('config/config_para_2');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/busyBoulvard/input';
path_save =	'~/dataset/CDN_2014_2/nightVideos/busyBoulvard';
detection_SoAF_1();

