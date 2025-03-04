function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

p = zeros(size(X, 1), 1);

z_3 = [ones(m, 1) sigmoid([ones(m, 1) X] * Theta1')] * Theta2';
h_of_x = sigmoid(z_3);

[max_value, p] = max(h_of_x, [], 2);


% =========================================================================


end
