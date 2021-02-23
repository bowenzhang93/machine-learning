function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       


mu_x1 = mean(X(:,1));
mu_x2 = mean(X(:,2));
sigma_x1 = std(X(:,1));
sigma_x2 = std(X(:,2));
##sigma_x1 = max(X(:,1))-min(X(:,1));
##sigma_x2 = max(X(:,2))-min(X(:,2));


X_norm_x1 = (X(:,1) - mu_x1) / sigma_x1;
X_norm_x2 = (X(:,2) - mu_x2) / sigma_x2;
X_norm = [X_norm_x1, X_norm_x2];
mu = [mu_x1, mu_x2];
sigma = [sigma_x1, sigma_x2];



% ============================================================

end
