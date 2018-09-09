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


threshold_big = 0.5;
threshold_sma = 0.5;
threshold_range = 0;

result = [];

run('../config/config_tool');



clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\badWeather\blizzard\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\badWeather\blizzard\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\badWeather\skating\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\badWeather\skating\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\badWeather\snowFall\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\badWeather\snowFall\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\badWeather\wetSnow\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\badWeather\wetSnow\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\baseline\highway\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\baseline\highway\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\baseline\office\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\baseline\office\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\baseline\pedestrians\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\baseline\pedestrians\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\baseline\PETS2006\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\baseline\PETS2006\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\cameraJitter\badminton\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\cameraJitter\badminton\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\cameraJitter\boulevard\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\cameraJitter\boulevard\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\cameraJitter\sidewalk\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\cameraJitter\sidewalk\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\cameraJitter\traffic\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\cameraJitter\traffic\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/boats\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/boats\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/canoe\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/canoe\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/fall\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/fall\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/fountain01\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/fountain01\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/fountain02\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/fountain02\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/overpass\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/overpass\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\intermittentObjectMotion/abandonedBox\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\intermittentObjectMotion/abandonedBox\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\intermittentObjectMotion/parking\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\intermittentObjectMotion/parking\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\intermittentObjectMotion/sofa\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\intermittentObjectMotion/sofa\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\intermittentObjectMotion/streetLight\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\intermittentObjectMotion/streetLight\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\intermittentObjectMotion/tramstop\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\intermittentObjectMotion/tramstop\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\intermittentObjectMotion/winterDriveway\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\intermittentObjectMotion/winterDriveway\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\lowFramerate/port_0_17fps\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\lowFramerate/port_0_17fps\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\lowFramerate/tramCrossroad_1fps\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\lowFramerate/tramCrossroad_1fps\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\lowFramerate/tunnelExit_0_35fps\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\lowFramerate/tunnelExit_0_35fps\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\lowFramerate/turnpike_0_5fps\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\lowFramerate/turnpike_0_5fps\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\nightVideos/bridgeEntry\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\nightVideos/bridgeEntry\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\nightVideos/busyBoulvard\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\nightVideos/busyBoulvard\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\nightVideos/fluidHighway\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\nightVideos/fluidHighway\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\nightVideos/streetCornerAtNight\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\nightVideos/streetCornerAtNight\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\nightVideos/tramStation\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\nightVideos/tramStation\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\nightVideos/winterStreet\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\nightVideos/winterStreet\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\PTZ/continuousPan\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\PTZ/continuousPan\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\PTZ/intermittentPan\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\PTZ/intermittentPan\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\PTZ/twoPositionPTZCam\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\PTZ/twoPositionPTZCam\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\PTZ/zoomInZoomOut\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\PTZ/zoomInZoomOut\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/backdoor\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/backdoor\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/bungalows\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/bungalows\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/busStation\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/busStation\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/copyMachine\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/copyMachine\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/cubicle\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/cubicle\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/peopleInShade\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/peopleInShade\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/corridor\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/corridor\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/diningRoom\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/diningRoom\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/lakeSide\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/lakeSide\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/library\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/library\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/park\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/park\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\turbulence/turbulence0\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\turbulence/turbulence0\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\turbulence/turbulence1\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\turbulence/turbulence1\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\turbulence/turbulence2\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\turbulence/turbulence2\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];





clear files_sim;
clear files_tru;
clear data_sim;
clear data_tru;

path_sim = 'E:\dataset\dataset2014_deal\dataset\turbulence/turbulence3\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\turbulence/turbulence3\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_files(path_sim,format_sim);
[files_tru data_tru] = loadData_files(path_tru,format_tru);

re_simvalue = evaluate_cdn_double_tmp(path_sim,path_tru,files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)

result = [result ; Recall Precision f_means];



txtWrite(result,'result_MultiCue.txt');
