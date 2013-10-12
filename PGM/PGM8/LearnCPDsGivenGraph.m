function [P loglikelihood] = LearnCPDsGivenGraph(dataset, G, labels)
%
% Inputs:
% dataset: N x 10 x 3, N poses represented by 10 parts in (y, x, alpha)
% G: graph parameterization as explained in PA description
% labels: N x 2 true class labels for the examples. labels(i,j)=1 if the 
%         the ith example belongs to class j and 0 elsewhere        
%
% Outputs:
% P: struct array parameters (explained in PA description)
% loglikelihood: log-likelihood of the data (scalar)
%
% Copyright (C) Daphne Koller, Stanford Univerity, 2012

N = size(dataset,1);
K = size(labels,2);

loglikelihood = 0;
P.c = zeros(1,K);

% estimate parameters
% fill in P.c, MLE for class probabilities
% fill in P.clg for each body part and each class
% choose the right parameterization based on G(i,1)
% compute the likelihood - you may want to use ComputeLogLikelihood.m
% you just implemented.
%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ON = size(dataset,2);
P.c = mean(labels);


G = ReshapeGraph(G,K);

P.clg = repmat(struct('mu_y', [], 'sigma_y', [], ...
                      'mu_x', [], 'sigma_x', [], ...
                      'mu_angle', [], 'sigma_angle', [], ...
                      'theta', []), 1, ON);
for n=1:N
    for i=1:ON
        clg = struct('mu_y', [], 'sigma_y', zeros(1,K), ...
                      'mu_x', [], 'sigma_x', zeros(1,K), ...
                      'mu_angle', [], 'sigma_angle', zeros(1,K), ...
                      'theta', []);
        if any(G(i,1,:))
            clg.theta = zeros(K,12);
        else
            clg.mu_y = zeros(1,K);
            clg.mu_x = zeros(1,K);
            clg.mu_angle = zeros(1,K);
        end
        for k=1:K
            if ~G(i,1,k)
                % parentless nodes
                idx = find(labels(:,k));
                dataset_y = dataset(find(labels(:,k)),i,1); 
                [clg.mu_y(k), clg.sigma_y(k)] = FitGaussianParameters(dataset_y);
                dataset_x = dataset(find(labels(:,k)),i,2); 
                [clg.mu_x(k), clg.sigma_x(k)] = FitGaussianParameters(dataset_x);
                dataset_a = dataset(find(labels(:,k)),i,3); 
                [clg.mu_angle(k), clg.sigma_angle(k)] = FitGaussianParameters(dataset_a);
            else
                % node has a parent
                parent = G(i,2,k);
                idx = find(labels(:,k));
                parents_y = dataset(find(labels(:,k)),parent,1);
                parents_x = dataset(find(labels(:,k)),parent,2);
                parents_a = dataset(find(labels(:,k)),parent,3);
                map = [4,1,2,3];
 
                parents = [parents_y(:), parents_x(:), parents_a(:)];
                dataset_y = dataset(find(labels(:,k)),i,1);
                [theta_1, clg.sigma_y(k)] = FitLinearGaussianParameters(dataset_y, parents);
                theta_1 = theta_1(map);
                dataset_x = dataset(find(labels(:,k)),i,2); 
                parents_x = dataset(find(labels(:,k)),parent,2); 
                [theta_2, clg.sigma_x(k)] = FitLinearGaussianParameters(dataset_x, parents);
                theta_2 = theta_2(map);
                dataset_a = dataset(find(labels(:,k)),i,3); 
                parents_a = dataset(find(labels(:,k)),parent,3); 
                [theta_3, clg.sigma_angle(k)] = FitLinearGaussianParameters(dataset_a, parents);
                theta_3 = theta_3(map);
                theta = [theta_1(:)', theta_2(:)', theta_3(:)'];
                clg.theta(k,:) = theta;
            end
        end
        P.clg(i) = clg;
    end
end
loglikelihood = ComputeLogLikelihood(P, G, dataset);
fprintf('log likelihood: %f\n', loglikelihood);

function Gnew = ReshapeGraph(G, K)
    if size(G,3) > 1
        Gnew = G;
    else
        Gnew = repmat(G, [size(G) K]);
    end

