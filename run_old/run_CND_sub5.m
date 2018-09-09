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

path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/sofa/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/sofa';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/streetLight/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/streetLight';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/tramstop/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/tramstop';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/winterDriveway/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/port_0_17fps/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/port_0_17fps';
detection_SoAF();

