function plot_data(x,y)
fprintf('Plotting Data...\n');
data=load('iris_data2.txt');
X=data(:,1:4);
y=data(:,5);
for i=1:size(X,2)
    figure;
    x=X(:,i);
    
    if y==1
        plot(x,y, 'rx', 'MarkerSize', 10);
    elseif y==2
        plot(x,y, 'bx', 'MarkerSize', 10);
    else
        plot(x,y, 'gx', 'MarkerSize', 10);
    end
    
    if i==1
        xlabel('sepal length in cm');
    elseif i==2
        xlabel('sepal width in cm');
    elseif i==3
        xlabel('petal length in cm');
    else
        xlabel('petal width in cm');
    end
    ylabel('flower nature');
    
end
end

