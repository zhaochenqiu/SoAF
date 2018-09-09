clear all
close all
clc

global path_img path_save format_img;

% the tools used in algorithms are configured in the config_tool.m
run('config/config_tool');

% the parameter of algorithms is configured in config_para




clear all;

global path_img path_save format_img;

format_img  = 'jpg';


run('config/config_para');
path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/boats/input';
path_save =	'~/dataset/CDN_test/dynamicBackground/boats/input';
detection_SoAF();


