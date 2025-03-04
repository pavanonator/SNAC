function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

J = 0;

% Loop implementation
%for i = 1:m,
%	J = J + (((X(i,:) * theta) - y(i)) ^ 2);
%end;

% Vectorized implementation
J = sum(((X * theta) - y) .^ 2);

J = 1 / (2 * m) * J;

% =========================================================================

end
