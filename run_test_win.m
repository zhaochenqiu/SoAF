clear all
close all
clc

global path_img path_save format_img;

% the tools used in algorithms are configured in the config_tool.m
run('config/config_tool');

% the parameter of algorithms is configured in config_para
run('config/config_para');

format_img  = 'jpg';
path_img    = 'D:\dataset\dataset\dynamicBackground\canoe\input';
path_save   = 'D:\dataset\CDN\dynamicBackground\canoe';


format_img  = 'jpg';
%path_img    = 'E:\dataset\dataset\dynamicBackground\canoe\input';
%path_save   = 'E:\dataset\CDN\dynamicBackground\canoe';


detection_SoAF();




