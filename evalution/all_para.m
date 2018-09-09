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







threshold_big = 0.45;
threshold_sma = 0.15;
threshold_range = 3;

filesname = 'result1_15.txt';
result = [];

run('../config/config_tool');



clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.55;
threshold_sma = 0.15;
threshold_range = 3;

filesname = 'result1_25.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.65;
threshold_sma = 0.15;
threshold_range = 3;

filesname = 'result1_35.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.75;
threshold_sma = 0.15;
threshold_range = 3;

filesname = 'result1_45.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.85;
threshold_sma = 0.15;
threshold_range = 3;

filesname = 'result1_55.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.45;
threshold_sma = 0.25;
threshold_range = 3;

filesname = 'result2_15.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.55;
threshold_sma = 0.25;
threshold_range = 3;

filesname = 'result2_25.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.65;
threshold_sma = 0.25;
threshold_range = 3;

filesname = 'result2_35.txt';
result = [];

run('../config/config_tool');



clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.75;
threshold_sma = 0.25;
threshold_range = 3;

filesname = 'result2_45.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.85;
threshold_sma = 0.25;
threshold_range = 3;

filesname = 'result2_55.txt';
result = [];

run('../config/config_tool');





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.45;
threshold_sma = 0.35;
threshold_range = 3;

filesname = 'result3_15.txt';
result = [];

run('../config/config_tool');



clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.55;
threshold_sma = 0.35;
threshold_range = 3;

filesname = 'result3_25.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.65;
threshold_sma = 0.35;
threshold_range = 3;

filesname = 'result3_35.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.75;
threshold_sma = 0.35;
threshold_range = 3;

filesname = 'result3_45.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);



threshold_big = 0.85;
threshold_sma = 0.35;
threshold_range = 3;

filesname = 'result3_55.txt';
result = [];

run('../config/config_tool');




clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = '~/dataset/CDN_2014/badWeather/blizzard/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/skating/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/snowFall/similar';
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

path_sim = '~/dataset/CDN_2014/badWeather/wetSnow/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/office/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
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

path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/badminton/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/boulevard/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/sidewalk/similar';
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

path_sim = '~/dataset/CDN_2014/cameraJitter/traffic/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
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

path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/abandonedBox/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/parking/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/sofa/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/streetLight/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/tramstop/similar';
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

path_sim = '~/dataset/CDN_2014/intermittentObjectMotion/winterDriveway/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/port_0_17fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tramCrossroad_1fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/tunnelExit_0_35fps/similar';
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

path_sim = '~/dataset/CDN_2014/lowFramerate/turnpike_0_5fps/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/bridgeEntry/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/busyBoulvard/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/fluidHighway/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/streetCornerAtNight/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/tramStation/similar';
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

path_sim = '~/dataset/CDN_2014/nightVideos/winterStreet/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/continuousPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/intermittentPan/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/twoPositionPTZCam/similar';
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

path_sim = '~/dataset/CDN_2014/PTZ/zoomInZoomOut/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
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

path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/library/similar';
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

path_sim = '~/dataset/CDN_2014/thermal/park/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence0/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence1/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence2/similar';
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

path_sim = '~/dataset/CDN_2014/turbulence/turbulence3/similar';
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

txtWrite(result,filesname);

