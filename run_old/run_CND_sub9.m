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

path_img  =	'~/dataset/dataset2014/dataset/shadow/busStation/input';
path_save =	'~/dataset/CDN_2014/shadow/busStation';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/shadow/copyMachine/input';
path_save =	'~/dataset/CDN_2014/shadow/copyMachine';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/shadow/cubicle/input';
path_save =	'~/dataset/CDN_2014/shadow/cubicle';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/shadow/peopleInShade/input';
path_save =	'~/dataset/CDN_2014/shadow/peopleInShade';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/thermal/corridor/input';
path_save =	'~/dataset/CDN_2014/thermal/corridor';
detection_SoAF();

