clear all
close all
clc

% [re pr fm] = [0.9348 0.9460 0.9404]
threshold_big = 0.5;
threshold_sma = 0.2;
threshold_range = 10;


% [re pr fm] = [0.9324 0.9494 0.9408]
% 0.9370
threshold_big = 0.6;
threshold_sma = 0.25;
threshold_range = 8;

threshold_big = 0.85;
threshold_sma = 0.35;
threshold_range = 8;




run('../config/config_tool');

path_sim = 'E:\dataset\CDN\dynamicBackground\canoe\similar';
format_sim = 'png';

path_tru = 'E:\dataset\dataset\dynamicBackground\canoe\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)


%{
path_sim = 'E:\dataset\CDN\baseline\office\similar';
format_sim = 'png';

path_tru = 'E:\dataset\dataset\baseline\office\groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

re_simvalue = evaluate_cdn_double(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

data = re_simvalue;

TP = data(1);
FP = data(2);
FN = data(3);
TN = data(4);

re = TP / (TP + FN)
pr = TP / (TP + FP)

Precision = pr;
Recall = re;

f_means = (2 * Precision * Recall) / (Precision + Recall)
%}
