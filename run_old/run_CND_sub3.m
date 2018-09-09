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

path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/sidewalk/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/sidewalk';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/traffic/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/traffic';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/boats/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/boats';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/canoe/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/canoe';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fall/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fall';
detection_SoAF();


