function [p,temp] = predict(all_theta, X)
m = size(X, 1);
p=zeros(m,1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];
    
temp=[];
[temp] =sigmoid(X*(all_theta)');

for c = 1:m
    [idx, p(c)]=max(temp(c,:));
end

end
