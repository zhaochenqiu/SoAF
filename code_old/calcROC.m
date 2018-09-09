function [TP FP TN FN] = calcROC(fgimage,truth)



fgPindex = fgimage == 255;
fgNindex = fgimage == 0;

trPindex = truth == 255;
trNindex = truth == 0;

index = fgPindex & trPindex;       % ������
TP = sum(sum(index));

index = fgPindex & trNindex;       % ������
FP = sum(sum(index));

index = fgNindex & trNindex;       % ������
TN = sum(sum(index));

index = fgNindex & trPindex;       % ������
FN = sum(sum(index));