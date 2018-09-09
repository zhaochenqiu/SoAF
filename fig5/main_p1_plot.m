clear all
close all
clc


run('../config/config_tool.m');
run('../config/config_para_do.m');

global g_judge;
%E:\dataset\dataset\shadow\peopleInShade\input
%E:\dataset\dataset\shadow\peopleInShade
%E:\dataset\dataset\dynamicBackground\fountain02\input
%E:\dataset2014\dataset\dynamicBackground\overpass\input
%E:\dataset\dataset\dynamicBackground\canoe\input
%E:\dataset\dataset\dynamicBackground\fountain02\input
path = 'D:\dataset\dataset\baseline\highway\input'; %input('Path: ');  
format = 'jpg';                                     %input('Format: ');
g_judge = 1;

data = loadData(path,format);
point_row = 120;
point_column = 50;

allframe = 1000;


result = detection(data,allframe,point_row,point_column);


x = 1:20:1000;

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
set (gcf, 'color','w')
list = result(:,1,1);
plot(x,list(x),'-o','color',[0 0 0],'linewidth',3)
ylim([min(list(x))-20 max(list(x))+20])
F=getframe(gcf);
imwrite(F.cdata,'green_grayvalue.bmp')

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
list = result(:,1,2);
plot(x,list(x),'-o','color',[0 0 0],'linewidth',3)
ylim([min(list(x))-20 max(list(x))+20])
F=getframe(gcf);
imwrite(F.cdata,'green_redvalue.bmp')

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
list = result(:,1,3);
plot(x,list(x),'-o','color',[0 0 0],'linewidth',3)
ylim([min(list(x))-20 max(list(x))+20])
F=getframe(gcf);
imwrite(F.cdata,'green_greenvalue.bmp')

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
list = result(:,1,4);
plot(x,list(x),'-o','color',[0 0 0],'linewidth',3)
ylim([min(list(x))-20 max(list(x))+20])
F=getframe(gcf);
imwrite(F.cdata,'green_bluevalue.bmp')

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
list = result(:,1,5);
plot(x,list(x),'-o','color',[0 0 0],'linewidth',3)
ylim([min(list(x))-20 max(list(x))+20])
F=getframe(gcf);
imwrite(F.cdata,'green_texturevalue.bmp')
