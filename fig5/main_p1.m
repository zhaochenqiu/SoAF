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

allframe = 1700;


result = detection(data,allframe,point_row,point_column);

left = 40;
right = 40;

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
hist(result(:,1,1),-10:1:500)
set(get(gca,'child'),'FaceColor','k','EdgeColor','k');
ylim([0 allframe])
%set(gca,'xtick',[]);
xlim([min(result(:,1,1))-left max(result(:,1,1))+right])
F=getframe(gcf);
imwrite(F.cdata,'green_grayhistogram.bmp')

left = 20;
right = 20;
figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
hist(result(:,1,2),-10:1:500)
set(get(gca,'child'),'FaceColor','k','EdgeColor','k');
ylim([0 allframe])
%set(gca,'xtick',[]);
xlim([min(result(:,1,2))-left max(result(:,1,2))] + right)
F=getframe(gcf);
imwrite(F.cdata,'green_redhistogram.bmp')

left = 60;
right = 60;

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
hist(result(:,1,3),-10:1:500)
set(get(gca,'child'),'FaceColor','k','EdgeColor','k');
ylim([0 allframe])
%set(gca,'xtick',[]);
xlim([min(result(:,1,3))-left max(result(:,1,3)) + right])
F=getframe(gcf);
imwrite(F.cdata,'green_greenhistogram.bmp')

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
hist(result(:,1,4),-10:1:500)
set(get(gca,'child'),'FaceColor','k','EdgeColor','k');
ylim([0 allframe])
%set(gca,'xtick',[]);
xlim([min(result(:,1,4))-left max(result(:,1,4)) + right])
F=getframe(gcf);
imwrite(F.cdata,'green_bluehistogram.bmp')

figure
set (gcf,'Position',[0 0 500 400], 'color','w')
set(gca,'FontName','Times New Roman','FontSize',40)
hist(result(:,1,5),-10:1:500)
set(get(gca,'child'),'FaceColor','k','EdgeColor','k');
ylim([0 allframe])
%set(gca,'xtick',[]);
xlim([min(result(:,1,5))-left max(result(:,1,5))+right])
F=getframe(gcf);
imwrite(F.cdata,'green_texturehistogram.bmp')
