% File: EM_HMM.m
%
% Copyright (C) Daphne Koller, Stanford Univerity, 2012

function [P loglikelihood ClassProb PairProb] = EM_HMM(actionData, poseData, G, InitialClassProb, InitialPairProb, maxIter)

% INPUTS
% actionData: structure holding the actions as described in the PA
% poseData: N x 10 x 3 matrix, where N is number of poses in all actions
% G: graph parameterization as explained in PA description
% InitialClassProb: N x K matrix, initial allocation of the N poses to the K
%   states. InitialClassProb(i,j) is the probability that example i belongs
%   to state j.
%   This is described in more detail in the PA.
% InitialPairProb: V x K^2 matrix, where V is the total number of pose
%   transitions in all HMM action models, and K is the number of states.
%   This is described in more detail in the PA.
% maxIter: max number of iterations to run EM

% OUTPUTS
% P: structure holding the learned parameters as described in the PA
% loglikelihood: #(iterations run) x 1 vector of loglikelihoods stored for
%   each iteration
% ClassProb: N x K matrix of the conditional class probability of the N examples to the
%   K states in the final iteration. ClassProb(i,j) is the probability that
%   example i belongs to state j. This is described in more detail in the PA.
% PairProb: V x K^2 matrix, where V is the total number of pose transitions
%   in all HMM action models, and K is the number of states. This is
%   described in more detail in the PA.

% Initialize variables
N = size(poseData, 1);
K = size(InitialClassProb, 2);
L = size(actionData, 2); % number of actions
V = size(InitialPairProb, 1);

O = size(poseData, 2);

ClassProb = InitialClassProb;
PairProb = InitialPairProb;

loglikelihood = zeros(maxIter,1);

P.c = [];
P.clg.sigma_x = [];
P.clg.sigma_y = [];
P.clg.sigma_angle = [];

% EM algorithm
for iter=1:maxIter
  
  % M-STEP to estimate parameters for Gaussians
  % Fill in P.c, the initial state prior probability (NOT the class probability as in PA8 and EM_cluster.m)
  % Fill in P.clg for each body part and each class
  % Make sure to choose the right parameterization based on G(i,1)
  % Hint: This part should be similar to your work from PA8 and EM_cluster.m
  
  P.c = zeros(1,K);
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % YOUR CODE HERE
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
  
  ClassProb2 = zeros(L,K);
  for i=1:L
     index = actionData(i).marg_ind(1);
     ClassProb2(i,:) = ClassProb(index,:);
  end
  P.c = mean(ClassProb2);
  %P.c = mean(ClassProb)

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
  % M-STEP to estimate parameters for transition matrix
  % Fill in P.transMatrix, the transition matrix for states
  % P.transMatrix(i,j) is the probability of transitioning from state i to state j
  P.transMatrix = zeros(K,K);
  
  % Add Dirichlet prior based on size of poseData to avoid 0 probabilities
  %P.transMatrix = P.transMatrix + size(PairProb,1) * .05;
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % YOUR CODE HERE
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  PP = mean(PairProb);
  PP2 = reshape(PP, K, K);

  P.transMatrix = P.transMatrix .+ .05;
  P.transMatrix .+=  PP2;

  for i=1:K
    P.transMatrix(i,:) ./= sum(P.transMatrix(i,:));
  end

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % E-STEP preparation: compute the emission model factors (emission probabilities) in log space for each 
  % of the poses in all actions = log( P(Pose | State) )
  % Hint: This part should be similar to (but NOT the same as) your code in EM_cluster.m
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % YOUR CODE HERE
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  logEmissionProb = zeros(N,K);
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
    logEmissionProb(n,:) = log_prob;
  end
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
  % E-STEP to compute expected sufficient statistics
  % ClassProb contains the conditional class probabilities for each pose in all actions
  % PairProb contains the expected sufficient statistics for the transition CPDs (pairwise transition probabilities)
  % Also compute log likelihood of dataset for this iteration
  % You should do inference and compute everything in log space, only converting to probability space at the end
  % Hint: You should use the logsumexp() function here to do probability normalization in log space to avoid numerical issues
  
  ClassProb = ones(N,K);
  PairProb = ones(V,K^2);
  loglikelihood(iter) = 0;
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % YOUR CODE HERE
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % create factors for P(S_1), P(S_i|S_i-1), P(P_i|S_i)
  for a=1:L
    action = actionData(a);
    f = struct('var', [], 'card', [], 'val', []);
    f.var = 1;
    f.card = K;
    f.val = log(P.c);
    F = [f];
    for i=1:length(action.pair_ind)
      f = struct('var', [], 'card', [], 'val', []);
      f.var = [i i+1];
      f.card = [K K];
      f.val = log(reshape(P.transMatrix, 1, K^2));
      F = [F f];
    end
    ll = length(action.marg_ind);
    for i=1:ll
      f = struct('var', [], 'card', [], 'val', []);
      f.var = i;
      f.card = K;
      f.val = logEmissionProb(action.marg_ind(i),:);
      F = [F f];
    end
    [M, PCal] = ComputeExactMarginalsHMM(F);
    for i=1:length(M)
        probs = exp(M(i).val - logsumexp(M(i).val));
        ClassProb(action.marg_ind(i),:) = probs;
    end
    for i=1:length(PCal.cliqueList)
        probs = exp(PCal.cliqueList(i).val - logsumexp(PCal.cliqueList(i).val));
        PairProb(action.pair_ind(i),:) = probs;
    end
    loglikelihood(iter) += logsumexp(PCal.cliqueList(1).val);
  end
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %logs = reshape(logEmissionProb, N*K, 1);
  %loglikelihood(iter) = logsumexp(logs);
  % Print out loglikelihood
  disp(sprintf('EM iteration %d: log likelihood: %f', ...
    iter, loglikelihood(iter)));
  if exist('OCTAVE_VERSION')
    fflush(stdout);
  end
  
  % Check for overfitting by decreasing loglikelihood
  if iter > 1
    if loglikelihood(iter) < loglikelihood(iter-1)
      break;
    end
  end
  
end

% Remove iterations if we exited early
loglikelihood = loglikelihood(1:iter);
