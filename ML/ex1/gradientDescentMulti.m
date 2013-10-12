function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    predictions = X * theta; % predictions is a vector samples * theta parameters
    errors = (predictions-y); % errors is a vector predictions - actual values (=y)

    % we should update theta
    % theta_1 = theta_1 - alpha * derivative(cost(theta0, theta1)*X_1)
    new_theta = [];
    for i=1:size(X,2)
        theta_c=theta(i,:)-((alpha/m)*sum(errors.*X(:,i)));
        new_theta = [new_theta; theta_c];
    end
    theta = new_theta;

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end
end
