function [result] = iris_function(q)
load('all_theta.mat');
q=[1,q];
h=sigmoid(q*(all_theta)');
[val, result]=max(h);
end
