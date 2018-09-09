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

path_img  =	'~/dataset/dataset2014/dataset/PTZ/intermittentPan/input';
path_save =	'~/dataset/CDN_2014/PTZ/intermittentPan';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/PTZ/twoPositionPTZCam/input';
path_save =	'~/dataset/CDN_2014/PTZ/twoPositionPTZCam';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/PTZ/zoomInZoomOut/input';
path_save =	'~/dataset/CDN_2014/PTZ/zoomInZoomOut';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/shadow/backdoor/input';
path_save =	'~/dataset/CDN_2014/shadow/backdoor';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/shadow/bungalows/input';
path_save =	'~/dataset/CDN_2014/shadow/bungalows';
detection_SoAF();

