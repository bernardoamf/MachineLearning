function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 
%

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
s = size(theta);
d = zeros(size(theta));
h=zeros(size(X,2));
sizeTheta = size(theta,1);
sizeX = size(X,2);
m = size(y,1);


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

h = sigmoid(X * theta);
s_blue = sum(y .* log(h));
s_orange = sum((1 - y) .* log(1-h));

d = (lambda / (2 * m)) * (theta(2:sizeTheta,1)' * theta(2:sizeTheta,1));
J = -(1/m) *  (s_blue + s_orange) + d;

grad = ((1/m) * ((sigmoid(X * theta) - y)' * X))';
grad(2:sizeTheta,1) = grad(2:sizeTheta,1) + (lambda/m) .*theta(2:sizeTheta,1);






% =============================================================

end
