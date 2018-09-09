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
path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fountain01/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fountain01/input';
detection_SoAF();


