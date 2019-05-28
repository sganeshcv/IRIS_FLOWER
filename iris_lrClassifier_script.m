data=load("iris_data2.txt");
X=data(:,1:4);
y=data(:,5);

lambda = 0.1;
[all_theta] = oneVSall(X, y, 3, lambda);

[pred, t] = predict(all_theta, X);
save('all_theta');
