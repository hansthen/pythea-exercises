function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % calculate derivative
    predictions = X * theta; % predictions is a vector samples * theta parameters
    errors = (predictions-y); % errors is a vector predictions - actual values (=y)
    
    % we should update theta
    % theta_0 = theta_0 - alpha * derivative(cost(theta0, theta1))
    % theta_1 = theta_1 - alpha * derivative(cost(theta0, theta1)*X_1)
    theta_0=theta(1,:)-((alpha/m)*sum(errors.*X(:,1)));
    theta_1=theta(2,:)-((alpha/m)*sum(errors.*X(:,2)));
    theta = [theta_0; theta_1];

    % ============================================================

    % Save the cost J in every iteration    
    J = computeCost(X,y,theta);
    J_history(iter) = computeCost(X, y, theta);
end

end
