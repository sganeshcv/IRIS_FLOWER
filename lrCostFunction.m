function [J, grad] = lrCostFunction(theta, X, y, lambda)
m = length(y);
h= zeros(m,1);

J = 0;
grad = zeros(size(theta));

temp=theta;
temp(1)=0;
h=sigmoid(X*theta);
J=((-1/m)*(y'*log(h)+(1-y)'*log(1-h)))+((lambda/(2*m))*(temp'*temp));
grad=(1/m)*((X'*(h-y))+(lambda*temp));

grad = grad(:);

end