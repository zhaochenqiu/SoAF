clear all
close all
clc

global path_img path_save format_img;

% the tools used in algorithms are configured in the config_tool.m
run('config/config_tool');

% the parameter of algorithms is configured in config_para
run('config/config_para');

format_img  = 'jpg';
path_img  =	'~/dataset/dataset2014/dataset/badWeather/blizzard/input';
path_save =	'~/dataset/CDN_2014/badWeather/blizzard/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/badWeather/skating/input';
path_save =	'~/dataset/CDN_2014/badWeather/skating/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/badWeather/snowFall/input';
path_save =	'~/dataset/CDN_2014/badWeather/snowFall/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/badWeather/wetSnow/input';
path_save =	'~/dataset/CDN_2014/badWeather/wetSnow/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/baseline/wetSnow/input';
path_save =	'~/dataset/CDN_2014/baseline/wetSnow/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/baseline/highway/input';
path_save =	'~/dataset/CDN_2014/baseline/highway/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/baseline/office/input';
path_save =	'~/dataset/CDN_2014/baseline/office/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/baseline/pedestrians/input';
path_save =	'~/dataset/CDN_2014/baseline/pedestrians/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/baseline/PETS2006/input';
path_save =	'~/dataset/CDN_2014/baseline/PETS2006/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/PETS2006/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/PETS2006/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/badminton/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/badminton/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/boulevard/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/boulevard/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/sidewalk/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/sidewalk/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/cameraJitter/traffic/input';
path_save =	'~/dataset/CDN_2014/cameraJitter/traffic/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/traffic/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/traffic/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/boats/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/boats/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/canoe/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/canoe/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fall/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fall/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fountain01/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fountain01/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/fountain02/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/fountain02/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/dynamicBackground/overpass/input';
path_save =	'~/dataset/CDN_2014/dynamicBackground/overpass/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/overpass/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/overpass/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/abandonedBox/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/parking/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/parking/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/sofa/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/sofa/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/streetLight/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/streetLight/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/tramstop/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/tramstop/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/intermittentObjectMotion/winterDriveway/input';
path_save =	'~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/winterDriveway/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/winterDriveway/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/port_0_17fps/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/port_0_17fps/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/tramCrossroad_1fps/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/tunnelExit_0_35fps/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/lowFramerate/turnpike_0_5fps/input';
path_save =	'~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/nightVideos/turnpike_0_5fps/input';
path_save =	'~/dataset/CDN_2014/nightVideos/turnpike_0_5fps/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/nightVideos/bridgeEntry/input';
path_save =	'~/dataset/CDN_2014/nightVideos/bridgeEntry/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/nightVideos/busyBoulvard/input';
path_save =	'~/dataset/CDN_2014/nightVideos/busyBoulvard/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/nightVideos/fluidHighway/input';
path_save =	'~/dataset/CDN_2014/nightVideos/fluidHighway/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/nightVideos/streetCornerAtNight/input';
path_save =	'~/dataset/CDN_2014/nightVideos/streetCornerAtNight/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/nightVideos/tramStation/input';
path_save =	'~/dataset/CDN_2014/nightVideos/tramStation/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/nightVideos/winterStreet/input';
path_save =	'~/dataset/CDN_2014/nightVideos/winterStreet/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/PTZ/winterStreet/input';
path_save =	'~/dataset/CDN_2014/PTZ/winterStreet/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/PTZ/continuousPan/input';
path_save =	'~/dataset/CDN_2014/PTZ/continuousPan/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/PTZ/intermittentPan/input';
path_save =	'~/dataset/CDN_2014/PTZ/intermittentPan/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/PTZ/twoPositionPTZCam/input';
path_save =	'~/dataset/CDN_2014/PTZ/twoPositionPTZCam/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/PTZ/zoomInZoomOut/input';
path_save =	'~/dataset/CDN_2014/PTZ/zoomInZoomOut/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/shadow/zoomInZoomOut/input';
path_save =	'~/dataset/CDN_2014/shadow/zoomInZoomOut/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/shadow/backdoor/input';
path_save =	'~/dataset/CDN_2014/shadow/backdoor/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/shadow/bungalows/input';
path_save =	'~/dataset/CDN_2014/shadow/bungalows/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/shadow/busStation/input';
path_save =	'~/dataset/CDN_2014/shadow/busStation/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/shadow/copyMachine/input';
path_save =	'~/dataset/CDN_2014/shadow/copyMachine/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/shadow/cubicle/input';
path_save =	'~/dataset/CDN_2014/shadow/cubicle/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/shadow/peopleInShade/input';
path_save =	'~/dataset/CDN_2014/shadow/peopleInShade/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/thermal/peopleInShade/input';
path_save =	'~/dataset/CDN_2014/thermal/peopleInShade/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/thermal/corridor/input';
path_save =	'~/dataset/CDN_2014/thermal/corridor/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/thermal/diningRoom/input';
path_save =	'~/dataset/CDN_2014/thermal/diningRoom/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/thermal/lakeSide/input';
path_save =	'~/dataset/CDN_2014/thermal/lakeSide/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/thermal/library/input';
path_save =	'~/dataset/CDN_2014/thermal/library/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/thermal/park/input';
path_save =	'~/dataset/CDN_2014/thermal/park/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/turbulence/park/input';
path_save =	'~/dataset/CDN_2014/turbulence/park/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence0/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence0/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence1/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence1/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence2/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence2/input';
detection_SoAF();


path_img  =	'~/dataset/dataset2014/dataset/turbulence/turbulence3/input';
path_save =	'~/dataset/CDN_2014/turbulence/turbulence3/input';
detection_SoAF();


