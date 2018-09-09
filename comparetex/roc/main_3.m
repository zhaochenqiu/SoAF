run('../../config/config_tool.m');

clear all
close all
clc

path_sim_R_siltp    = 'E:\dataset\R_siltp\highway\similar';
path_sim_siltp      = 'E:\dataset\siltp\highway\similar';
format_sim = 'png';

path_tru = 'E:\dataset\dataset\baseline\highway\groundtruth';
format_tru = 'png';


[files_sim_R_siltp data_sim_R_siltp] = loadData_files(path_sim_R_siltp,format_sim);
[files_sim_siltp data_sim_siltp]     = loadData_files(path_sim_siltp,format_sim);

[files_tru data_tru] = loadData_files(path_tru,format_tru);

threshold = 0.5;

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

f_means = (2 .* Precision .* Recall) ./ (Precision + Recall);

result_R_siltp = [ tpr pr f_means];




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

f_means = (2 .* Precision .* Recall) ./ (Precision + Recall);

result_siltp = [tpr pr f_means];



txtWrite(result_R_siltp,'data_R_siltp.txt');
[row_t column_t] = size(result_R_siltp);
list = 1:row_t;


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,1)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,1)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('re')
axis([470,1700,0,1]);
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
plot((list),(result_R_siltp(:,2)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,2)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('pr')
axis([470,1700,0,1]);
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
plot((list),(result_R_siltp(:,3)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,3)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
axis([470,1700,0,1]);
imagename = 'highway'
mydir = './'
name=[imagename '_fm.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])






clear all
close all
clc

path_sim_R_siltp    = 'E:\dataset\R_siltp\pedestrians\similar';
path_sim_siltp      = 'E:\dataset\siltp\pedestrians\similar';
format_sim = 'png';

path_tru = 'E:\dataset\dataset\baseline\pedestrians\groundtruth';
format_tru = 'png';


[files_sim_R_siltp data_sim_R_siltp] = loadData_files(path_sim_R_siltp,format_sim);
[files_sim_siltp data_sim_siltp]     = loadData_files(path_sim_siltp,format_sim);

[files_tru data_tru] = loadData_files(path_tru,format_tru);

threshold = 0.5;

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

f_means = (2 .* Precision .* Recall) ./ (Precision + Recall);

result_R_siltp = [ tpr pr f_means];




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

f_means = (2 .* Precision .* Recall) ./ (Precision + Recall);

result_siltp = [tpr pr f_means];



txtWrite(result_R_siltp,'data_R_siltp.txt');
[row_t column_t] = size(result_R_siltp);
list = 1:row_t;


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,1)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,1)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('re')
axis([300,1060,0,1]);
imagename = 'pedestrians'
mydir = './'
name=[imagename '_re.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,2)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,2)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('pr')
axis([300,1060,0,1]);
imagename = 'pedestrians'
mydir = './'
name=[imagename '_pr.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])



figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,3)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,3)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
axis([300,1060,0,1]);
imagename = 'pedestrians'
mydir = './'
name=[imagename '_fm.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])







clear all
close all
clc

path_sim_R_siltp    = 'E:\dataset\R_siltp\PETS2006\similar';
path_sim_siltp      = 'E:\dataset\siltp\PETS2006\similar';
format_sim = 'png';

path_tru = 'E:\dataset\dataset\baseline\PETS2006\groundtruth';
format_tru = 'png';


[files_sim_R_siltp data_sim_R_siltp] = loadData_files(path_sim_R_siltp,format_sim);
[files_sim_siltp data_sim_siltp]     = loadData_files(path_sim_siltp,format_sim);

[files_tru data_tru] = loadData_files(path_tru,format_tru);

threshold = 0.5;

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

f_means = (2 .* Precision .* Recall) ./ (Precision + Recall);

result_R_siltp = [ tpr pr f_means];




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

f_means = (2 .* Precision .* Recall) ./ (Precision + Recall);

result_siltp = [tpr pr f_means];



txtWrite(result_R_siltp,'data_R_siltp.txt');
[row_t column_t] = size(result_R_siltp);
list = 1:row_t;


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,1)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,1)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('re')
axis([300,1200,0,1]);
imagename = 'PETS2006'
mydir = './'
name=[imagename '_re.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])


figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,2)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,2)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('pr')
axis([300,1200,0,1]);
imagename = 'PETS2006'
mydir = './'
name=[imagename '_pr.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])



figurehandle = figure
set(gcf,'Position',[0 0 800 600],'color','w')
set(gca,'FontName','Times New Roman','FontSize',28)
set(gcf,'color','w');
% plot((FPR_R_siltp),(TPR_R_siltp),   'linestyle','-.','color',[0.1 0.1 0.1],'linewidth',3);
plot((list),(result_R_siltp(:,3)), '-.','color',[0.1 0.1 0.1],'linewidth',5);
hold on
% plot((FPR_siltp) ,(TPR_siltp),      'linestyle','-.','color',[0.6 0.6 0.6],'linewidth',3);
plot((list) ,(result_siltp(:,3)),  '-.','color',[0.6 0.6 0.6],'linewidth',5);
legend('R-SILTP','SILTP',4)
xlabel('frames')
ylabel('fm')
axis([300,1200,0,1]);
imagename = 'PETS2006'
mydir = './'
name=[imagename '_fm.png']; %'pets2006_Re.png';%['\figure',num2str(fighandle),'.png'];
F=getframe(gcf);
imwrite(F.cdata,[mydir,name])


