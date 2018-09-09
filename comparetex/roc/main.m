run('../../config/config_tool.m');

clear all
close all
clc

path_sim_R_siltp    = 'D:\dataset\R_siltp\highway\similar';
path_sim_siltp      = 'D:\dataset\siltp\highway\similar';
format_sim = 'png';

path_tru = 'D:\dataset\dataset\baseline\highway\groundtruth';
format_tru = 'png';


[files_sim_R_siltp data_sim_R_siltp] = loadData_files(path_sim_R_siltp,format_sim);
[files_sim_siltp data_sim_siltp]     = loadData_files(path_sim_siltp,format_sim);

[files_tru data_tru] = loadData_files(path_tru,format_tru);


result_R_siltp = [];
result_siltp = [];

list_thr = [0.001 0.01 0.1 0.2 0.5 0.6 0.8 0.9 0.99 0.999];


list_thr = [0 0.001 0.6 0.9 0.99  1 1.1];

list_thr = [0 0.6  1 1.1];

list_thr = rand(20,1);

list_thr = [-0.1 ; list_thr ; 1.1];

list_thr = [0 0.001 0.01 0.5 0.6 0.8 0.9 0.99 1];

list_thr = [0.5 0.6 0.8 0.9];

list_thr = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];

list_thr = list_thr';

[row_t column_t] = size(list_thr);

for i = 1:row_t
%    threshold = rand();
    threshold = list_thr(i);


    threshold_big = threshold;
    threshold_sma = threshold;
    threshold_range = 0;



    simvalue_R_siltp = evaluate_cdn_double_roc(path_sim_R_siltp,path_tru,files_sim_R_siltp,data_sim_R_siltp,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);
    simvalue_siltp = evaluate_cdn_double_roc(path_sim_siltp,path_tru,    files_sim_siltp  ,data_sim_siltp  ,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

    data = simvalue_R_siltp;

    TP = data(1);
    FP = data(2);
    FN = data(3);
    TN = data(4);

    tpr = TP/ (TP + FN);
    fpr = FP/ (FP + TN);

    result_R_siltp = [result_R_siltp ; tpr fpr];




    data = simvalue_siltp;

    TP = data(1);
    FP = data(2);
    FN = data(3);
    TN = data(4);

    tpr = TP/ (TP + FN);
    fpr = FP/ (FP + TN);

    result_siltp = [result_siltp ; tpr fpr];

%    result = [result ; re ]
%    result = [result ; re pr fpr fm];
i
end

data_R_siltp = sortrows(result_R_siltp,2);

FPR_R_siltp = data_R_siltp(:,2);
TPR_R_siltp = data_R_siltp(:,1);


data_siltp = sortrows(result_siltp,2);

FPR_siltp = data_siltp(:,2);
TPR_siltp = data_siltp(:,1);


txtWrite(data_R_siltp,'test1.txt');
txtWrite(data_siltp,'test2.txt');



figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((FPR_R_siltp),(TPR_R_siltp), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((FPR_siltp) ,(TPR_siltp),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('Faise positive rate(1-specificity)')
ylabel('True positive rate(sensitivity)')
axis([0,0.15,0,1]);
imagename = 'compare_highway'
mydir = './'
name=[imagename '_Roc.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])



clear all
close all
clc

path_sim_R_siltp    = 'D:\dataset\R_siltp\office\similar';
path_sim_siltp      = 'D:\dataset\siltp\office\similar';
format_sim = 'png';

path_tru = 'D:\dataset\dataset\baseline\office\groundtruth';
format_tru = 'png';


[files_sim_R_siltp data_sim_R_siltp] = loadData_files(path_sim_R_siltp,format_sim);
[files_sim_siltp data_sim_siltp]     = loadData_files(path_sim_siltp,format_sim);

[files_tru data_tru] = loadData_files(path_tru,format_tru);


result_R_siltp = [];
result_siltp = [];

list_thr = [0.001 0.01 0.1 0.2 0.5 0.6 0.8 0.9 0.99 0.999];


list_thr = [0 0.001 0.6 0.9 0.99  1 1.1];

list_thr = [0 0.6  1 1.1];

list_thr = rand(10,1);

%list_thr = [-0.1 ; 0 ; list_thr ; 1.1];

list_thr = [0 ; list_thr ; 1];

list_thr = [0.001 0.01 0.1 0.2 0.5 0.6 0.8 0.9 0.99 0.999];

list_thr = rand(20,1);

list_thr = [0 0.001 0.01 0.5 0.6 0.8 0.9 0.99 1];
list_thr = [0 0.001 0.01 0.5 0.6 0.8 0.9 0.99 1];

list_thr = [0 0.001 0.01 0.5 0.6 0.8 0.9 0.99 1];


list_thr = [0.5 0.6 0.8 0.9];
list_thr = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];

list_thr = list_thr';
%list_thr = [list_thr ; rand(100,1)];

[row_t column_t] = size(list_thr);

for i = 1:row_t
%    threshold = rand();
    threshold = list_thr(i);


    threshold_big = threshold;
    threshold_sma = threshold;
    threshold_range = 0;



    simvalue_R_siltp = evaluate_cdn_double_roc(path_sim_R_siltp,path_tru,files_sim_R_siltp,data_sim_R_siltp,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);
    simvalue_siltp = evaluate_cdn_double_roc(path_sim_siltp,path_tru,    files_sim_siltp  ,data_sim_siltp  ,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

    data = simvalue_R_siltp;

    TP = data(1);
    FP = data(2);
    FN = data(3);
    TN = data(4);

    tpr = TP/ (TP + FN);
    fpr = FP/ (FP + TN);

    result_R_siltp = [result_R_siltp ; tpr fpr];




    data = simvalue_siltp;

    TP = data(1);
    FP = data(2);
    FN = data(3);
    TN = data(4);

    tpr = TP/ (TP + FN);
    fpr = FP/ (FP + TN);

    result_siltp = [result_siltp ; tpr fpr];

%    result = [result ; re ]
%    result = [result ; re pr fpr fm];
end

data_R_siltp = sortrows(result_R_siltp,2);

FPR_R_siltp = data_R_siltp(:,2);
TPR_R_siltp = data_R_siltp(:,1);


data_siltp = sortrows(result_siltp,2);

FPR_siltp = data_siltp(:,2);
TPR_siltp = data_siltp(:,1);

txtWrite(data_R_siltp,'test3.txt');
txtWrite(data_siltp,'test4.txt');




figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
%plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((FPR_R_siltp),(TPR_R_siltp), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((FPR_siltp) ,(TPR_siltp),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('Faise positive rate(1-specificity)')
ylabel('True positive rate(sensitivity)')
axis([0,0.15,0,1]);
imagename = 'office'
mydir = './'
name=[imagename '_Roc.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])






clear all
close all
clc

path_sim_R_siltp    = 'D:\dataset\R_siltp\pedestrians\similar';
path_sim_siltp      = 'D:\dataset\siltp\pedestrians\similar';
format_sim = 'png';

path_tru = 'D:\dataset\dataset\baseline\pedestrians\groundtruth';
format_tru = 'png';


[files_sim_R_siltp data_sim_R_siltp] = loadData_files(path_sim_R_siltp,format_sim);
[files_sim_siltp data_sim_siltp]     = loadData_files(path_sim_siltp,format_sim);

[files_tru data_tru] = loadData_files(path_tru,format_tru);


result_R_siltp = [];
result_siltp = [];

list_thr = [0.001 0.01 0.1 0.2 0.5 0.6 0.8 0.9 0.99 0.999];


list_thr = [0 0.001 0.6 0.9 0.99  1 1.1];

list_thr = [0 0.6  1 1.1];

list_thr = rand(20,1);

list_thr = [-0.1 ; 0 ; list_thr ; 1.1];

list_thr = rand(20,1);

list_thr = [0 0.001 0.01 0.5 0.6 0.8 0.9 0.99 1];

list_thr = [0.5 0.6 0.8 0.9];
list_thr = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];

list_thr = list_thr';

[row_t column_t] = size(list_thr);

for i = 1:row_t
%    threshold = rand();
    threshold = list_thr(i);


    threshold_big = threshold;
    threshold_sma = threshold;
    threshold_range = 0;



    simvalue_R_siltp = evaluate_cdn_double_roc(path_sim_R_siltp,path_tru,files_sim_R_siltp,data_sim_R_siltp,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);
    simvalue_siltp = evaluate_cdn_double_roc(path_sim_siltp,path_tru,    files_sim_siltp  ,data_sim_siltp  ,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

    data = simvalue_R_siltp;

    TP = data(1);
    FP = data(2);
    FN = data(3);
    TN = data(4);

    tpr = TP/ (TP + FN);
    fpr = FP/ (FP + TN);

    result_R_siltp = [result_R_siltp ; tpr fpr];




    data = simvalue_siltp;

    TP = data(1);
    FP = data(2);
    FN = data(3);
    TN = data(4);

    tpr = TP/ (TP + FN);
    fpr = FP/ (FP + TN);

    result_siltp = [result_siltp ; tpr fpr];

%    result = [result ; re ]
%    result = [result ; re pr fpr fm];
end

data_R_siltp = sortrows(result_R_siltp,2);

FPR_R_siltp = data_R_siltp(:,2);
TPR_R_siltp = data_R_siltp(:,1);


data_siltp = sortrows(result_siltp,2);

FPR_siltp = data_siltp(:,2);
TPR_siltp = data_siltp(:,1);


txtWrite(data_R_siltp,'test5.txt');
txtWrite(data_siltp,'test6.txt');



figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((FPR_R_siltp),(TPR_R_siltp), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((FPR_siltp) ,(TPR_siltp),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('Faise positive rate(1-specificity)')
ylabel('True positive rate(sensitivity)')
axis([0,0.15,0,1]);
imagename = 'compare'
mydir = './'
name=[imagename '_Roc.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])
