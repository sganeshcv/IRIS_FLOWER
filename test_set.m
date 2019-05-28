function [y, result] = test_set()
data=load('test.txt');
X=data(:,1:4);
m=size(X,1);
result=zeros(m,1);
for c=1:m
    result(c)=iris_function(X(c,:));
end
y=data(:,5);
end
