function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

best = 100000;
best_c = 1
best_s = 1

for k1 = 0:8
    for k2 = 0:8
        test_c = 0.01 * 3^k1;
        test_s = 0.01 * 3^k2;
        printf("%.3f:%.3f\n", test_c, test_s);
        model = svmTrain(X, y, test_c, @(x1, x2) gaussianKernel(x1, x2, test_s), 1e-3, 20);
        predictions = svmPredict(model, Xval);
        error = mean(double(predictions ~= yval))
        if error < best
            best_c = test_c;
            best_s = test_s;
            best = error;
    end
end

C = best_c;
sigma = best_s;

% =========================================================================

end
