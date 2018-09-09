clear all
close all
clc

global path_img path_save format_img;

% the tools used in algorithms are configured in the config_tool.m
run('config/config_tool');

% the parameter of algorithms is configured in config_para
run('config/config_para');




clear all;

global path_img path_save format_img;

format_img  = 'jpg';
run('config/config_para');
path_img  =	'~/dataset/dataset2014/dataset/baseline/PETS2006/input';
path_save =	'~/dataset/CDN_2014/baseline/PETS2006/input';
detection_SoAF();



clear all;

global path_img path_save format_img;

format_img  = 'jpg';
run('config/config_para');
path_img  =	'~/dataset/dataset2014/dataset/baseline/office/input';
path_save =	'~/dataset/CDN_2014/baseline/office/input';
detection_SoAF();



clear all;

global path_img path_save format_img;

format_img  = 'jpg';
run('config/config_para');
path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/boats/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/boats/input';
detection_SoAF();



clear all;

global path_img path_save format_img;

format_img  = 'jpg';
run('config/config_para');
path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/canoe/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/canoe/input';
detection_SoAF();



clear all;

global path_img path_save format_img;

format_img  = 'jpg';
run('config/config_para');
path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fountain01/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fountain01/input';
detection_SoAF();



clear all;

global path_img path_save format_img;

format_img  = 'jpg';
run('config/config_para');
path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fountain02/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fountain02/input';
detection_SoAF();
