function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = length(theta(:,1)) -1;
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% Z = X*theta;
% J = (-y'*log(sigmoid(Z))-(1-y)'*log(1-sigmoid(Z)))/m + (lambda/(2*m))*theta(2:(n+1),1)'*theta(2:(n+1),1);
% grad = (X'*(sigmoid(Z)-y))/m + (lambda/m)*theta;
% grad(1) = X(:,1)'*(sigmoid(Z)-y)/m;

h = sigmoid(X * theta);
theta(1,1) = 0;
J = (1/m) * ((-y)' * log(h) - (1-y)' * log(1 -h)) + (lambda/(2*m)) * (theta' * theta);
grad = (1/m) * X' * (h - y) + (lambda/m) * theta;
grad(1,1) = (1/m) * X'(1,:) * (h - y);



% =============================================================

end