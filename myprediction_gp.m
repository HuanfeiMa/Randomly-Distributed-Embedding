% using gaussian process to train the input-output relation and make
% prediction for inputs
% traininputs: n*m, n is dimension, m is length
% trainoutputs: 1*m, m is length
% inputs: n*l, n is dimension, l is the length of inputs

function outputs = myprediction_gp(traininputs,trainoutputs,inputs)
warning off;
s=size(traininputs);
n=s(1);
powers=mypower(n,2);
s=size(powers);
l=s(1);
gprMdl = fitrgp(traininputs',trainoutputs','Basis',@mypowerseries,'Beta',zeros(l,1),'FitMethod','exact','PredictMethod','exact');
outputs=predict(gprMdl,inputs');
