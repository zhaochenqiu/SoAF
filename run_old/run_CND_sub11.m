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

path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence1/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence1';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence2/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence2';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence3/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence3';
detection_SoAF();