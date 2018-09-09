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

threshold_big = 0.1;
threshold_sma = 0.1;
threshold_range = 0;




run('../config/config_tool');

result = [];

% E:\dataset\dataset2014_deal\dataset\baseline\highway\output_SJN_MultiCueBGS
% E:\dataset\dataset2014\dataset\baseline\highway\groundtruth
path_sim = 'E:\dataset\dataset2014_deal\dataset\baseline\highway\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\baseline\highway\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\baseline\office\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\baseline\office\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\baseline\pedestrians\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\baseline\pedestrians\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\baseline\PETS2006\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\baseline\PETS2006\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;
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





path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/boats\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/boats\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;
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



path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/canoe\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/canoe\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/fall\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/fall\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/fountain01\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/fountain01\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;
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




path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/fountain02\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/fountain02\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\dynamicBackground/overpass\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\dynamicBackground/overpass\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;
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





path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/backdoor\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/backdoor\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/bungalows\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/bungalows\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/busStation\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/busStation\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/copyMachine\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/copyMachine\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;
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




path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/cubicle\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/cubicle\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\shadow/peopleInShade\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\shadow/peopleInShade\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/corridor\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/corridor\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/diningRoom\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/diningRoom\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;
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




path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/lakeSide\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/lakeSide\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;
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




path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/library\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/library\groundtruth';
path_msk = path_tru;
format_tru = 'png';
clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;

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




path_sim = 'E:\dataset\dataset2014_deal\dataset\thermal/park\output_SJN_MultiCueBGS';
format_sim = 'png';

path_tru = 'E:\dataset\dataset2014\dataset\thermal/park\groundtruth';
path_msk = path_tru;
format_tru = 'png';

clear files_sim;
clear data_sim;
clear files_tru;
clear data_tru;
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



