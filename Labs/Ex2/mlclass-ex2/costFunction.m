function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
s = size(theta);

h=zeros(size(X,2));


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
%grad = X * theta'

%h = 1 ./ (1 .+ e .^ -(X * theta));
h = sigmoid(X * theta);
s_blue = sum(y .* log(h));
s_orange = sum((1 - y) .* log(1-h));
m = size(y,1);


J = -(1/m) *  (s_blue + s_orange);

	







% =============================================================

end
