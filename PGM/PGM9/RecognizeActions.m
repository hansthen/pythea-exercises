% File: RecognizeActions.m
%
% Copyright (C) Daphne Koller, Stanford Univerity, 2012

function [accuracy, predicted_labels] = RecognizeActions(datasetTrain, datasetTest, G, maxIter)

% INPUTS
% datasetTrain: dataset for training models, see PA for details
% datasetTest: dataset for testing models, see PA for details
% G: graph parameterization as explained in PA decription
% maxIter: max number of iterations to run for EM

% OUTPUTS
% accuracy: recognition accuracy, defined as (#correctly classified examples / #total examples)
% predicted_labels: N x 1 vector with the predicted labels for each of the instances in datasetTest, with N being the number of unknown test instances


% Train a model for each action
% Note that all actions share the same graph parameterization and number of max iterations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
K = length(datasetTrain);
N = length(datasetTest.actionData);

actions=repmat(struct("P", [], "loglikelihood", [], "ClassProb", [], "PairProb", []), 1, K);
for a=1:K
  data = datasetTrain(a);
  [P loglikelihood ClassProb PairProb] = EM_HMM(data.actionData, data.poseData, G, data.InitialClassProb, data.InitialPairProb, maxIter);
  actions(a).label = data.actionData.action;
  actions(a).P = P;
  actions(a).loglikelihood = loglikelihood;
  actions(a).ClassProb = ClassProb;
  actions(a).PairProb = PairProb;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Classify each of the instances in datasetTrain
% Compute and return the predicted labels and accuracy
% Accuracy is defined as (#correctly classified examples / #total examples)
% Note that all actions share the same graph parameterization

predicted_labels = zeros(N,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
label_names = {'clap', 'high_kick', 'low_kick'};

K_poses = 3;

accuracy = 0
score = 0

for idx=1:N
  label_probs = zeros(1,K);
  for label_k=1:K
    action = datasetTest.actionData(idx);
    poseData = datasetTest.poseData;

    N2 = length(action.marg_ind);
    logEmissionProb = zeros(N2,K_poses);
    for n=1:N2
      log_prob = zeros(1,K_poses);
      for k=1:K_poses
        for i=1:10
          Y = poseData(action.marg_ind(n),i,1);
          X = poseData(action.marg_ind(n),i,2);
          A = poseData(action.marg_ind(n),i,3);
          clg = actions(label_k).P.clg(i);
          %triplet = [k, i, G(i,2)]
          if G(i,1)
            parent = G(i,2);
            theta = clg.theta(k,:);
            yp = poseData(action.marg_ind(n), parent, 1);
            xp = poseData(action.marg_ind(n), parent, 2);
            ap = poseData(action.marg_ind(n), parent, 3);
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
    f = struct('var', [], 'card', [], 'val', []);
    f.var = 1;
    f.card = K;
    f.val = log(actions(label_k).P.c);
    F = [f];
    for i=1:length(action.pair_ind)
      f = struct('var', [], 'card', [], 'val', []);
      f.var = [i i+1];
      f.card = [K K];
      f.val = log(reshape(actions(label_k).P.transMatrix, 1, K_poses^2));
      F = [F f];
    end
    for i=1:N2
      f = struct('var', [], 'card', [], 'val', []);
      f.var = i;
      f.card = K;
      f.val = logEmissionProb(i,:);
      F = [F f];
    end
    [M, PCal] = ComputeExactMarginalsHMM(F);
    label_probs(label_k) = logsumexp(PCal.cliqueList(1).val);
  end
  [prob, label] = max(label_probs);
  predicted_labels(idx) = label;
  if label == datasetTest.labels(idx)
      score += 1;
  end
end

accuracy = score / N;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
