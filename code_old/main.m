clear all
close all
clc


global g_judge
%E:\dataset\dataset\shadow\peopleInShade\input
%E:\dataset\dataset\shadow\peopleInShade
%E:\dataset\dataset\dynamicBackground\fountain02\input
%E:\dataset2014\dataset\dynamicBackground\overpass\input
%E:\dataset\dataset\dynamicBackground\canoe\input
%E:\dataset\dataset\dynamicBackground\fountain02\input
%D:\dataset\dataset\dynamicBackground\canoe\input
path = 'D:\dataset\dataset\dynamicBackground\canoe\input'; %input('Path: ');  
path1 = 'D:\dataset\dataset\dynamicBackground\canoe\groundtruth';
format = 'jpg';                                     %input('Format: ');
format1 = 'png';   
g_judge = 1;

data = loadData(path,format);
truth = loadData(path1,format1);

detection(data,truth);