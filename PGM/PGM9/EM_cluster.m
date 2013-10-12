% File: EM_cluster.m
%
% Copyright (C) Daphne Koller, Stanford Univerity, 2012

function [P loglikelihood ClassProb] = EM_cluster(poseData, G, InitialClassProb, maxIter)

% INPUTS
% poseData: N x 10 x 3 matrix, where N is number of poses;
%   poseData(i,:,:) yields the 10x3 matrix for pose i.
% G: graph parameterization as explained in PA8
% InitialClassProb: N x K, initial allocation of the N poses to the K
%   classes. InitialClassProb(i,j) is the probability that example i belongs
%   to class j
% maxIter: max number of iterations to run EM

% OUTPUTS
% P: structure holding the learned parameters as described in the PA
% loglikelihood: #(iterations run) x 1 vector of loglikelihoods stored for
%   each iteration
% ClassProb: N x K, conditional class probability of the N examples to the
%   K classes in the final iteration. ClassProb(i,j) is the probability that
%   example i belongs to class j

% Initialize variables
N = size(poseData, 1);

% HTH added
O = size(poseData, 2);

K = size(InitialClassProb, 2);

ClassProb = InitialClassProb;

loglikelihood = zeros(maxIter,1);

P.c = [];
%P.clg.sigma_x = [];
%P.clg.sigma_y = [];
%P.clg.sigma_angle = [];

% EM algorithm
for iter=1:maxIter
  
  % M-STEP to estimate parameters for Gaussians
  %
  % Fill in P.c with the estimates for prior class probabilities
  % Fill in P.clg for each body part and each class
  % Make sure to choose the right parameterization based on G(i,1)
  %
  % Hint: This part should be similar to your work from PA8
  
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % YOUR CODE HERE
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  P.c = mean(ClassProb);
  P.clg = repmat(struct('mu_y', [], 'sigma_y', [], ...
                        'mu_x', [], 'sigma_x', [], ...
                        'mu_angle', [], 'sigma_angle', [], ...
                        'theta', []), 1, O);

  for i=1:O
    clg = struct('mu_y', [], 'sigma_y', zeros(1,K), ...
                 'mu_x', [], 'sigma_x', zeros(1,K), ...
                 'mu_angle', [], 'sigma_angle', zeros(1,K), ...
                 'theta', []);
    if any(G(i,1))
      clg.theta = zeros(K,12);
    else
      clg.mu_y = zeros(1,K);
      clg.mu_x = zeros(1,K);
      clg.mu_angle = zeros(1,K);
    end
    for k=1:K
      if ~G(i,1)
        % parentless nodes
        [clg.mu_y(k), clg.sigma_y(k)] = FitG(poseData(:,i,1), ClassProb(:,k));
        [clg.mu_x(k), clg.sigma_x(k)] = FitG(poseData(:,i,2), ClassProb(:,k));
        [clg.mu_angle(k), clg.sigma_angle(k)] = FitG(poseData(:,i,3), ClassProb(:,k));
      else
        % node has a parent
        parent = G(i,2);
        map = [4,1,2,3];
        [theta_1, clg.sigma_y(k)] = FitLG(poseData(:,i,1), squeeze(poseData(:,parent,:)), ClassProb(:,k));
        theta_1 = theta_1(map);
        [theta_2, clg.sigma_x(k)] = FitLG(poseData(:,i,2), squeeze(poseData(:,parent,:)), ClassProb(:,k));
        theta_2 = theta_2(map);
        [theta_3, clg.sigma_angle(k)] = FitLG(poseData(:,i,3), squeeze(poseData(:,parent,:)), ClassProb(:,k));
        theta_3 = theta_3(map);
        theta = [theta_1(:)', theta_2(:)', theta_3(:)'];
        clg.theta(k,:) = theta;
      end
    end
    P.clg(i) = clg;
  end
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  % E-STEP to re-estimate ClassProb using the new parameters
  %
  % Update ClassProb with the new conditional class probabilities.
  % Recall that ClassProb(i,j) is the probability that example i belongs to
  % class j.
  %
  % You should compute everything in log space, and only convert to
  % probability space at the end.
  %
  % Tip: To make things faster, try to reduce the number of calls to
  % lognormpdf, and inline the function (i.e., copy the lognormpdf code
  % into this file)
  %
  % Hint: You should use the logsumexp() function here to do
  % probability normalization in log space to avoid numerical issues
  
  ClassProb = zeros(N,K);
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % YOUR CODE HERE
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  for n=1:N
    log_prob = zeros(1,K);
    for k=1:K
      for i=1:10
        Y = poseData(n,i,1);
        X = poseData(n,i,2);
        A = poseData(n,i,3);

        clg = P.clg(i);
        %triplet = [k, i, G(i,2)]

        if G(i,1)
          parent = G(i,2);
          theta = clg.theta(k,:);
          yp = poseData(n, parent, 1);
          xp = poseData(n, parent, 2);
          ap = poseData(n, parent, 3);
          % [node parent yp xp ap]
          mu_y = theta(1) + theta(2) * yp + theta(3) * xp + theta(4) * ap;
          mu_x = theta(5) + theta(6) * yp + theta(7) * xp + theta(8) * ap;
          mu_a = theta(9) + theta(10) * yp + theta(11) * xp + theta(12) * ap;
        else
          mu_y = clg.mu_y(k);
          mu_x = clg.mu_x(k);
          mu_a = clg.mu_angle(k);
        end
        y = lognormpdf(Y, mu_y, clg.sigma_y(k));
        x = lognormpdf(X, mu_x, clg.sigma_x(k));
        a = lognormpdf(A, mu_a, clg.sigma_angle(k));
        log_prob(k) += x + y + a;
      end
    end
    log_prob = log_prob .+ log(P.c);
    loglikelihood(iter) += logsumexp(log_prob);
    probs = exp(log_prob - logsumexp(log_prob));
    ClassProb(n,:) = probs; 
    if abs(sum(probs)-1) > 0.00001 
        printf("probs does not sum to 1: %f\n", sum(probs));
    end
  end

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Compute log likelihood of dataset for this iteration
  % Hint: You should use the logsumexp() function here
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % YOUR CODE HERE
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
  % Print out loglikelihood
  disp(sprintf('EM iteration %d: log likelihood: %f', ...
    iter, loglikelihood(iter)));
  if exist('OCTAVE_VERSION')
    fflush(stdout);
  end
  
  % Check for overfitting: when loglikelihood decreases
  if iter > 1
    if loglikelihood(iter) < loglikelihood(iter-1)
      break;
    end
  end
end

% Remove iterations if we exited early
loglikelihood = loglikelihood(1:iter);
