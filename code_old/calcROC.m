function [TP FP TN FN] = calcROC(fgimage,truth)



fgPindex = fgimage == 255;
fgNindex = fgimage == 0;

trPindex = truth == 255;
trNindex = truth == 0;

index = fgPindex & trPindex;       % 真阳性
TP = sum(sum(index));

index = fgPindex & trNindex;       % 假阳性
FP = sum(sum(index));

index = fgNindex & trNindex;       % 真阴性
TN = sum(sum(index));

index = fgNindex & trPindex;       % 假阴性
FN = sum(sum(index));