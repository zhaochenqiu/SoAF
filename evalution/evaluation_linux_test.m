clear all
close all
clc

% [re pr fm] = [0.9348 0.9460 0.9404]
threshold_big = 0.5;
threshold_sma = 0.2;
threshold_range = 10;


% [re pr fm] = [0.9324 0.9494 0.9408]
threshold_big = 0.5;
threshold_sma = 0.2;
threshold_range = 8;

threshold_big = 0.85;
threshold_sma = 0.35;
threshold_range = 8;


threshold_big = 0.7;
threshold_sma = 0.3;
threshold_range = 8;

result = [];

run('../config/config_tool');


clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/badWeather/blizzard/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/badWeather/blizzard/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/badWeather/skating/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/badWeather/skating/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/badWeather/snowFall/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/badWeather/snowFall/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/badWeather/wetSnow/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/badWeather/wetSnow/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/baseline/highway/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/baseline/highway/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];



clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/baseline/office/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/baseline/office/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/baseline/pedestrians/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/baseline/pedestrians/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/baseline/PETS2006/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/baseline/PETS2006/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/cameraJitter/badminton/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/cameraJitter/badminton/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/cameraJitter/boulevard/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/cameraJitter/boulevard/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/cameraJitter/sidewalk/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/cameraJitter/sidewalk/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/cameraJitter/traffic/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/cameraJitter/traffic/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/dynamicBackground/boats/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/boats/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/dynamicBackground/canoe/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/canoe/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/dynamicBackground/fall/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/fall/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/dynamicBackground/fountain01/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/fountain01/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/dynamicBackground/fountain02/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/fountain02/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/dynamicBackground/overpass/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/overpass/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/intermittentObjectMotion/abandonedBox/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/intermittentObjectMotion/abandonedBox/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/intermittentObjectMotion/parking/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/intermittentObjectMotion/parking/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/intermittentObjectMotion/sofa/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/intermittentObjectMotion/sofa/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/intermittentObjectMotion/streetLight/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/intermittentObjectMotion/streetLight/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/intermittentObjectMotion/tramstop/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/intermittentObjectMotion/tramstop/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/intermittentObjectMotion/winterDriveway/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/intermittentObjectMotion/winterDriveway/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/lowFramerate/port_0_17fps/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/lowFramerate/port_0_17fps/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/lowFramerate/tramCrossroad_1fps/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/lowFramerate/tramCrossroad_1fps/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/lowFramerate/tunnelExit_0_35fps/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/lowFramerate/tunnelExit_0_35fps/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/lowFramerate/turnpike_0_5fps/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/lowFramerate/turnpike_0_5fps/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/nightVideos/bridgeEntry/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/nightVideos/bridgeEntry/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/nightVideos/busyBoulvard/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/nightVideos/busyBoulvard/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/nightVideos/fluidHighway/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/nightVideos/fluidHighway/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/nightVideos/streetCornerAtNight/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/nightVideos/streetCornerAtNight/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/nightVideos/tramStation/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/nightVideos/tramStation/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/nightVideos/winterStreet/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/nightVideos/winterStreet/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/PTZ/continuousPan/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/PTZ/continuousPan/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/PTZ/intermittentPan/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/PTZ/intermittentPan/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/PTZ/twoPositionPTZCam/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/PTZ/twoPositionPTZCam/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/PTZ/zoomInZoomOut/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/PTZ/zoomInZoomOut/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/shadow/backdoor/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/backdoor/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/shadow/bungalows/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/bungalows/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/shadow/busStation/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/busStation/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/shadow/copyMachine/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/copyMachine/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/shadow/cubicle/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/cubicle/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/shadow/peopleInShade/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/peopleInShade/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/thermal/corridor/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/corridor/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/thermal/diningRoom/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/diningRoom/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/thermal/lakeSide/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/lakeSide/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/thermal/library/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/library/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/thermal/park/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/park/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/turbulence/turbulence0/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/turbulence/turbulence0/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/turbulence/turbulence1/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/turbulence/turbulence1/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/turbulence/turbulence2/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/turbulence/turbulence2/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014_2/turbulence/turbulence3/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/turbulence/turbulence3/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];



txtWrite(result,'result_all_test.txt');
