global g_template;

g_template = [1 2 1
			2 8 2
			1 2 1];

g_template = g_template/sum(sum(g_template));

global g_vectorLen g_modelLen;
g_vectorLen = 5;
g_modelLen = 4;

global g_siltpRate g_siltpRange;
g_siltpRate = 0.1;
g_siltpRange = 1;

global addthresholdlist sigmasinitialist sigmasrate;
addthresholdlist = [2 4 4 4 2];     % 各个维度特征方差的最小值
sigmasinitialist = [2 4 4 4 2];     % 各个维度方差的初始值
sigmasrate = 1.6;   % 方差扩大倍数


global sigmasrate_fg;
sigmasrate_fg = 2;


global rate1 rate2;
rate1 = 0.99;       % 均值更新速率
rate2 = 0.99;       % 方差更新速率
