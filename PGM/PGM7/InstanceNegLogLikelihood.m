% function [nll, grad] = InstanceNegLogLikelihood(X, y, theta, modelParams)
% returns the negative log-likelihood and its gradient, given a CRF with parameters theta,
% on data (X, y). 
%
% Inputs:
% X            Data.                           (numCharacters x numImageFeatures matrix)
%              X(:,1) is all ones, i.e., it encodes the intercept/bias term.
% y            Data labels.                    (numCharacters x 1 vector)
% theta        CRF weights/parameters.         (numParams x 1 vector)
%              These are shared among the various singleton / pairwise features.
% modelParams  Struct with three fields:
%   .numHiddenStates     in our case, set to 26 (26 possible characters)
%   .numObservedStates   in our case, set to 2  (each pixel is either on or off)
%   .lambda              the regularization parameter lambda
%
% Outputs:
% nll          Negative log-likelihood of the data.    (scalar)
% grad         Gradient of nll with respect to theta   (numParams x 1 vector)
%
% Copyright (C) Daphne Koller, Stanford Univerity, 2012

function [nll, grad] = InstanceNegLogLikelihood(X, y, theta, modelParams)

    % featureSet is a struct with two fields:
    %    .numParams - the number of parameters in the CRF (this is not numImageFeatures
    %                 nor numFeatures, because of parameter sharing)
    %    .features  - an array comprising the features in the CRF.
    %
    % Each feature is a binary indicator variable, represented by a struct 
    % with three fields:
    %    .var          - a vector containing the variables in the scope of this feature
    %    .assignment   - the assignment that this indicator variable corresponds to
    %    .paramIdx     - the index in theta that this feature corresponds to
    %
    % For example, if we have:
    %   
    %   feature = struct('var', [2 3], 'assignment', [5 6], 'paramIdx', 8);
    %
    % then feature is an indicator function over X_2 and X_3, which takes on a value of 1
    % if X_2 = 5 and X_3 = 6 (which would be 'e' and 'f'), and 0 otherwise. 
    % Its contribution to the log-likelihood would be theta(8) if it's 1, and 0 otherwise.
    %
    % If you're interested in the implementation details of CRFs, 
    % feel free to read through GenerateAllFeatures.m and the functions it calls!
    % For the purposes of this assignment, though, you don't
    % have to understand how this code works. (It's complicated.)
    
    featureSet = GenerateAllFeatures(X, modelParams);

    % Use the featureSet to calculate nll and grad.
    % This is the main part of the assignment, and it is very tricky - be careful!
    % You might want to code up your own numerical gradient checker to make sure
    % your answers are correct.
    %
    % Hint: you can use CliqueTreeCalibrate to calculate logZ effectively. 
    %       We have halfway-modified CliqueTreeCalibrate; complete our implementation 
    %       if you want to use it to compute logZ.
    
    nll = 0;
    grad = zeros(size(theta));
    %%%
    % Your code here:
    sz = modelParams.numHiddenStates;

    features = featureSet.features;
    F = [];
    for i=1:length(features)
        feature = features(i);
        f = 0;
        f = FindFactorWithSignature(F, feature.var);
        if f == 0
            new_factor = struct('var', [], 'card', [], 'val', []);
            new_factor.var = feature.var;
            new_factor.card = sz * ones(size(feature.var));
            new_factor.val = zeros(1, sz^length(new_factor.var));
            F = [F new_factor];
            f = length(F);
        end
        indices = AssignmentToIndex(feature.assignment, F(f).card);
        F(f).val(indices) += theta(feature.paramIdx);
    end
    for i=1:length(F)
       F(i).val = exp(F(i).val);
    end
    P = CreateCliqueTree(F);

%% Part 2:

    load('Part2Sample.mat');

    [P, logZ] = CliqueTreeCalibrate(P, false);

    logZ
    
    N = length(theta);
    data_feature_counts = FeatureCounts(theta, features, y);
    weighted_feature_counts = data_feature_counts .* theta;

    M = SetupMarginalizedFactors(P);
    model_feature_counts = ModelFeatureCounts(theta, features, M);
   
    real_wfc = weighted_feature_counts(1:11)
    test_wfc = sampleWeightedFeatureCounts(1:11)

    real_dfc = data_feature_counts(1:11)
    test_dfc = sampleFeatureCounts(1:11)

    sum(model_feature_counts - sampleModelFeatureCounts > 10^-12)

    reg_cost = (modelParams.lambda/2) * sum(theta.^2)
    test_reg_cost = sampleRegularizationCost

    reg_gradient = modelParams.lambda * theta;

    real_reg_grad = reg_gradient(1:11) 
    test_reg_grad = sampleRegularizationGradient(1:11)

    nll = logZ - sum(weighted_feature_counts) + reg_cost;
    grad = model_feature_counts - data_feature_counts + reg_gradient;
end

function index = FindFactorWithSignature(F, var)
    index = 0;
    for i=1:length(F)
        if all(F(i).var == var)
            index = i;
            break
        end
    end
end

function M = SetupMarginalizedFactors(P)
    M = []
    vars = []
    for i=1:length(P.cliqueList)
        M = [M P.cliqueList(i)];
        vars = [vars, P.cliqueList(i).var];
    end
    vars = unique(vars);
    for i=1:length(vars)
       var = vars(i)
       for j=1:length(P.cliqueList)
          if any(P.cliqueList(j).var == var)
              remove = setdiff(P.cliqueList(j).var, var);
              factor = FactorMarginalization(P.cliqueList(j), remove);
              M = [M factor];
              break;
          end
       end
    end
    %M(5) = FactorMarginalization(P.cliqueList(1), 2);
    %M(4) = FactorMarginalization(P.cliqueList(1), 1);
    %M(3) = FactorMarginalization(P.cliqueList(2), 2);
    %M(2) = P.cliqueList(1);
    %M(1) = P.cliqueList(2);
    for i=1:length(M)
        M(i).val /= sum(M(i).val);
        M(i).val(1)
    end
end

function feature_counts = ModelFeatureCounts(theta, features, M)
    M
    feature_counts = zeros(1, length(theta));
    for i=1:length(features)
        f_i = FindFactorWithSignature(M, features(i).var);
        factor = M(f_i);
        index = AssignmentToIndex(features(i).assignment, factor.card);
        feature_counts(features(i).paramIdx) += factor.val(index);
    end
    %feature_counts = log(feature_counts);
end

function feature_counts = FeatureCounts(theta, features, y)
    feature_counts = zeros(1, length(theta));
    for i=1:length(features)
        if all(y(features(i).var) == features(i).assignment)
            theta_index = features(i).paramIdx;
            feature_counts(theta_index) += 1;
        end
    end
end
