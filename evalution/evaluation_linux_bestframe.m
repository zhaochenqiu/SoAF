clear all
close all
clc


threshold_big = 0.5;
threshold_sma = 0.2;
threshold_range = 10;



threshold_big = 0.5;
threshold_sma = 0.2;
threshold_range = 8;

threshold_big = 0.7;
threshold_sma = 0.3;
threshold_range = 8;

threshold_big = 0.75;
threshold_sma = 0.15;
threshold_range = 8;



threshold_big = 0.85;
threshold_sma = 0.35;
threshold_range = 8;


threshold_big = 0.7;
threshold_sma = 0.1;
threshold_range = 16;


threshold_big = 0.7;
threshold_sma = 0.3;
threshold_range = 8;


threshold_big = 0.7;
threshold_sma = 0.1;
threshold_range = 8;



threshold_big = 0.45;
threshold_sma = 0.15;
threshold_range = 8;


threshold_big = 0.7;
threshold_sma = 0.3;
threshold_range = 8;


threshold_big = 0.5;
threshold_sma = 0.1;
threshold_range = 8;





run('../config/config_tool');

result = [];


path_sim = '~/dataset/CDN_2014/baseline/highway/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/baseline/highway/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/baseline/office/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/baseline/office/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];





path_sim = '~/dataset/CDN_2014/baseline/pedestrians/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/baseline/pedestrians/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];





path_sim = '~/dataset/CDN_2014/baseline/PETS2006/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/baseline/PETS2006/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/dynamicBackground/boats/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/boats/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/dynamicBackground/canoe/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/canoe/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];





path_sim = '~/dataset/CDN_2014/dynamicBackground/fall/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/fall/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain01/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/fountain01/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];





path_sim = '~/dataset/CDN_2014/dynamicBackground/fountain02/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/fountain02/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];





path_sim = '~/dataset/CDN_2014/dynamicBackground/overpass/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/dynamicBackground/overpass/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];





path_sim = '~/dataset/CDN_2014/shadow/backdoor/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/backdoor/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/shadow/bungalows/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/bungalows/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/shadow/busStation/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/busStation/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/shadow/copyMachine/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/copyMachine/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/shadow/cubicle/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/cubicle/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];




path_sim = '~/dataset/CDN_2014/shadow/peopleInShade/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/shadow/peopleInShade/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];



path_sim = '~/dataset/CDN_2014/thermal/corridor/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/corridor/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];



path_sim = '~/dataset/CDN_2014/thermal/diningRoom/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/diningRoom/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];






path_sim = '~/dataset/CDN_2014/thermal/lakeSide/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/lakeSide/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];



path_sim = '~/dataset/CDN_2014/thermal/library/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/library/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];



path_sim = '~/dataset/CDN_2014/thermal/park/similar';
format_sim = 'png';

path_tru = '~/dataset/dataset2014/dataset/thermal/park/groundtruth';
path_msk = path_tru;
format_tru = 'png';


[files_sim data_sim] = loadData_plus(path_sim,format_sim);
[files_tru data_tru] = loadData_plus(path_tru,format_tru);

[re_fm re_frame] = evaluate_cdn_double_bestframe(files_sim,data_sim,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

result = [result ; re_fm re_frame];
