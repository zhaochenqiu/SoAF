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

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fountain01/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fountain01';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fountain02/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fountain02';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/overpass/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/overpass';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/abandonedBox/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/parking/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/parking';
detection_SoAF();

