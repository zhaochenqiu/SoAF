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

path_img  =	'~/dataset/dataset2014/dataset/baseline/office/input';
path_save =	'~/dataset/CDN_2014/baseline/office';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/baseline/pedestrians/input';
path_save =	'~/dataset/CDN_2014/baseline/pedestrians';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/baseline/PETS2006/input';
path_save =	'~/dataset/CDN_2014/baseline/PETS2006';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/badminton/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/badminton';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/boulevard/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/boulevard';
detection_SoAF();


