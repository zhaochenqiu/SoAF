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

path_img  =	'~/dataset/dataset2014/dataset/thermal/diningRoom/input';
path_save =	'~/dataset/CDN_2014/thermal/diningRoom';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/thermal/lakeSide/input';
path_save =	'~/dataset/CDN_2014/thermal/lakeSide';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/thermal/library/input';
path_save =	'~/dataset/CDN_2014/thermal/library';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/thermal/park/input';
path_save =	'~/dataset/CDN_2014/thermal/park';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence0/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence0';
detection_SoAF();

