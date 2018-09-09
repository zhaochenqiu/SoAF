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
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/badWeather/skating/input';
path_save =	'~/dataset/CDN_2014/badWeather/skating';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/badWeather/snowFall/input';
path_save =	'~/dataset/CDN_2014/badWeather/snowFall';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/badWeather/wetSnow/input';
path_save =	'~/dataset/CDN_2014/badWeather/wetSnow';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/baseline/highway/input';
path_save =	'~/dataset/CDN_2014/baseline/highway';
detection_SoAF();


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


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/sidewalk/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/sidewalk';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/traffic/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/traffic';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/boats/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/boats';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/canoe/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/canoe';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fall/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fall';
detection_SoAF();


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


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/tramCrossroad_1fps/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/tunnelExit_0_35fps/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/turnpike_0_5fps/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/bridgeEntry/input';
path_save =	'~/dataset/CDN_2014/nightVideos/bridgeEntry';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/busyBoulvard/input';
path_save =	'~/dataset/CDN_2014/nightVideos/busyBoulvard';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/fluidHighway/input';
path_save =	'~/dataset/CDN_2014/nightVideos/fluidHighway';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/streetCornerAtNight/input';
path_save =	'~/dataset/CDN_2014/nightVideos/streetCornerAtNight';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/tramStation/input';
path_save =	'~/dataset/CDN_2014/nightVideos/tramStation';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/nightVideos/winterStreet/input';
path_save =	'~/dataset/CDN_2014/nightVideos/winterStreet';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/PTZ/continuousPan/input';
path_save =	'~/dataset/CDN_2014/PTZ/continuousPan';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/PTZ/intermittentPan/input';
path_save =	'~/dataset/CDN_2014/PTZ/intermittentPan';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/PTZ/twoPositionPTZCam/input';
path_save =	'~/dataset/CDN_2014/PTZ/twoPositionPTZCam';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/PTZ/zoomInZoomOut/input';
path_save =	'~/dataset/CDN_2014/PTZ/zoomInZoomOut';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/shadow/backdoor/input';
path_save =	'~/dataset/CDN_2014/shadow/backdoor';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/shadow/bungalows/input';
path_save =	'~/dataset/CDN_2014/shadow/bungalows';
detection_SoAF();


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


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/thermal/diningRoom/input';
path_save =	'~/dataset/CDN_2014/thermal/diningRoom';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/thermal/lakeSide/input';
path_save =	'~/dataset/CDN_2014/thermal/lakeSide';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/thermal/library/input';
path_save =	'~/dataset/CDN_2014/thermal/library';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/thermal/park/input';
path_save =	'~/dataset/CDN_2014/thermal/park';
detection_SoAF();


clear all;
global path_img path_save format_img;
run('config/config_para');
format_img  = 'jpg';

path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence0/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence0';
detection_SoAF();


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


