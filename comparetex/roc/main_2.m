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
list_thr = [0.5];
list_thr = list_thr';

[row_t column_t] = size(list_thr);

for i = 1:row_t
%    threshold = rand();
    threshold = list_thr(i);


    threshold_big = threshold;
    threshold_sma = threshold;
    threshold_range = 0;



    simvalue_R_siltp = evaluate_cdn_double_all(path_sim_R_siltp,path_tru,files_sim_R_siltp,data_sim_R_siltp,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);
    simvalue_siltp = evaluate_cdn_double_all(path_sim_siltp,path_tru,    files_sim_siltp  ,data_sim_siltp  ,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

    data = simvalue_R_siltp;

    TP = data(:,1);
    FP = data(:,2);
    FN = data(:,3);
    TN = data(:,4);

    tpr = TP ./ (TP + FN);
    fpr = FP ./ (FP + TN);
    pr = TP  ./ (TP + FP);
    re = tpr;

    Precision = pr;
    Recall = re;

    f_means = (2 .* Precision .* Recall) ./ (Precision + Recall)


    result_R_siltp = [result_R_siltp ; tpr pr f_means];




    data = simvalue_siltp;

    TP = data(:,1);
    FP = data(:,2);
    FN = data(:,3);
    TN = data(:,4);

    tpr = TP ./ (TP + FN);
    fpr = FP ./ (FP + TN);
    pr = TP  ./ (TP + FP);
    re = tpr;

    Precision = pr;
    Recall = re;

    f_means = (2 .* Precision .* Recall) ./ (Precision + Recall)




    result_siltp = [result_siltp ; tpr pr f_means];

%    result = [result ; re ]
%    result = [result ; re pr fpr fm];
i
end


txtWrite(result_R_siltp,'data_R_siltp.txt');
[row_t column_t] = size(result_R_siltp);
list = 1:row_t;


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,1)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,1)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('re')
%axis([0,0.15,0,1]);
imagename = 'highway'
mydir = './'
name=[imagename '_re.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,2)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,2)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
%axis([0,0.15,0,1]);
imagename = 'highway'
mydir = './'
name=[imagename '_pr.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])



figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,3)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,3)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
%axis([0,0.15,0,1]);
imagename = 'highway'
mydir = './'
name=[imagename '_fm.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])


input('pause')

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
list_thr = [0.5];
list_thr = list_thr';

[row_t column_t] = size(list_thr);

for i = 1:row_t
%    threshold = rand();
    threshold = list_thr(i);


    threshold_big = threshold;
    threshold_sma = threshold;
    threshold_range = 0;



    simvalue_R_siltp = evaluate_cdn_double_all(path_sim_R_siltp,path_tru,files_sim_R_siltp,data_sim_R_siltp,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);
    simvalue_siltp = evaluate_cdn_double_all(path_sim_siltp,path_tru,    files_sim_siltp  ,data_sim_siltp  ,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

    data = simvalue_R_siltp;

    TP = data(:,1);
    FP = data(:,2);
    FN = data(:,3);
    TN = data(:,4);

    tpr = TP ./ (TP + FN);
    fpr = FP ./ (FP + TN);
    pr = TP  ./ (TP + FP);
    re = tpr;
    Precision = pr;
    Recall = re;

    f_means = (2 .* Precision .* Recall) ./ (Precision + Recall)



    result_R_siltp = [result_R_siltp ; tpr pr f_means];




    data = simvalue_siltp;

    TP = data(:,1);
    FP = data(:,2);
    FN = data(:,3);
    TN = data(:,4);

    tpr = TP ./ (TP + FN);
    fpr = FP ./ (FP + TN);
    pr = TP  ./ (TP + FP);
    re = tpr;
    Precision = pr;
    Recall = re;

    f_means = (2 .* Precision .* Recall) ./ (Precision + Recall)



    result_siltp = [result_siltp ; tpr pr f_means];

%    result = [result ; re ]
%    result = [result ; re pr fpr fm];
end





txtWrite(result_R_siltp,'data_R_siltp.txt');
[row_t column_t] = size(result_R_siltp);
list = 1:row_t;


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,1)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,1)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('re')
%axis([0,0.15,0,1]);
imagename = 'office'
mydir = './'
name=[imagename '_re.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,2)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,2)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
%axis([0,0.15,0,1]);
imagename = 'office'
mydir = './'
name=[imagename '_pr.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])



figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,3)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,3)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
%axis([0,0.15,0,1]);
imagename = 'office'
mydir = './'
name=[imagename '_fm.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
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
list_thr = [0.5];
list_thr = list_thr';

[row_t column_t] = size(list_thr);

for i = 1:row_t
%    threshold = rand();
    threshold = list_thr(i);


    threshold_big = threshold;
    threshold_sma = threshold;
    threshold_range = 0;



    simvalue_R_siltp = evaluate_cdn_double_all(path_sim_R_siltp,path_tru,files_sim_R_siltp,data_sim_R_siltp,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);
    simvalue_siltp = evaluate_cdn_double_all(path_sim_siltp,path_tru,    files_sim_siltp  ,data_sim_siltp  ,files_tru,data_tru,threshold_big,threshold_sma,threshold_range);

    data = simvalue_R_siltp;

    TP = data(:,1);
    FP = data(:,2);
    FN = data(:,3);
    TN = data(:,4);

    tpr = TP ./ (TP + FN);
    fpr = FP ./ (FP + TN);
    pr = TP  ./ (TP + FP);
    re = tpr;
    Precision = pr;
    Recall = re;

    f_means = (2 .* Precision .* Recall) ./ (Precision + Recall)



    result_R_siltp = [result_R_siltp ; tpr pr f_means];




    data = simvalue_siltp;

    TP = data(:,1);
    FP = data(:,2);
    FN = data(:,3);
    TN = data(:,4);

    tpr = TP ./ (TP + FN);
    fpr = FP ./ (FP + TN);
    pr = TP  ./ (TP + FP);
    re = tpr;
    Precision = pr;
    Recall = re;

    f_means = (2 .* Precision .* Recall) ./ (Precision + Recall)



    result_siltp = [result_siltp ; tpr pr f_means];

%    result = [result ; re ]
%    result = [result ; re pr fpr fm];
end


txtWrite(result_R_siltp,'data_R_siltp.txt');
[row_t column_t] = size(result_R_siltp);
list = 1:row_t;


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,1)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,1)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('re')
%axis([0,0.15,0,1]);
imagename = 'perdetra'
mydir = './'
name=[imagename '_re.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,2)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,2)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
%axis([0,0.15,0,1]);
imagename = 'perdetra'
mydir = './'
name=[imagename '_pr.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])



figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,3)), '-*','color',[0.1 0.1 0.1],'linewidth',3);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,3)),    '-*','color',[0.6 0.6 0.6],'linewidth',3);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
%axis([0,0.15,0,1]);
imagename = 'perdetra'
mydir = './'
name=[imagename '_fm.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])





