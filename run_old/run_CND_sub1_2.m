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

path_img  =	'~/dataset/dataset2014/dataset/badWeather/blizzard/input';
path_save =	'~/dataset/CDN_2014/badWeather/blizzard';
% detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/badWeather/skating/input';
path_save =	'~/dataset/CDN_2014/badWeather/skating';
%detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/badWeather/snowFall/input';
path_save =	'~/dataset/CDN_2014/badWeather/snowFall';
%detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/badWeather/wetSnow/input';
path_save =	'~/dataset/CDN_2014/badWeather/wetSnow';
% detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/baseline/highway/input';
path_save =	'~/dataset/CDN_2014/baseline/highway';
detection_SoAF();

