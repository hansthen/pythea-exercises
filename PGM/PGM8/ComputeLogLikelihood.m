function loglikelihood = ComputeLogLikelihood(P, G, dataset)
% returns the (natural) log-likelihood of data given the model and graph structure
%
% Inputs:
% P: struct array parameters (explained in PA description)
% G: graph structure and parameterization (explained in PA description)
%
%    NOTICE that G could be either 10x2 (same graph shared by all classes)
%    or 10x2x2 (each class has its own graph). your code should compute
%    the log-likelihood using the right graph.
%
% dataset: N x 10 x 3, N poses represented by 10 parts in (y, x, alpha)
% 
% Output:
% loglikelihood: log-likelihood of the data (scalar)
%
% Copyright (C) Daphne Koller, Stanford Univerity, 2012

N = size(dataset,1); % number of examples
K = length(P.c); % number of classes

loglikelihood = 0;
% You should compute the log likelihood of data as in eq. (12) and (13)
% in the PA description
% Hint: Use lognormpdf instead of log(normpdf) to prevent underflow.
%       You may use log(sum(exp(logProb))) to do addition in the original
%       space, sum(Prob).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

G = ReshapeGraph(G, K);

likelihood = 0;
for n=1:N
    log_prob = zeros(1,K);
    for k=1:K
        %(P(C=k)
        product = 0;
        values = zeros(3,10); %x,y,a 
        for i=1:10
            Y = dataset(n,i,1);
            X = dataset(n,i,2);
            A = dataset(n,i,3);

            clg = P.clg(i);
            %triplet = [k, i, G(i,2)]
            
            [mu_y, mu_x, mu_a] = CalculateMu(G, P, i, k, dataset, n);
            % I am not sure these need to be summed here.
            y = lognormpdf(Y, mu_y, clg.sigma_y(k));
            x = lognormpdf(X, mu_x, clg.sigma_x(k));
            a = lognormpdf(A, mu_a, clg.sigma_angle(k));
            log_prob(k) += x + y + a;
        end
    end
    log_prob = log_prob .+ log(P.c);
    loglikelihood += log(sum(exp(log_prob)));
end
% end of function
end

function mu_y, mu_x, mu_a = CalculateMu(G, P, node, k, dataset, n)
    clg = P.clg(node);
    has_parent = G(node,1,k);
    if has_parent
        parent = G(node,2,k);
        theta = clg.theta(k,:);
        yp = dataset(n, parent, 1);
        xp = dataset(n, parent, 2);
        ap = dataset(n, parent, 3);
        % [node parent yp xp ap]
        mu_y = theta(1) + theta(2) * yp + theta(3) * xp + theta(4) * ap;
        mu_x = theta(5) + theta(6) * yp + theta(7) * xp + theta(8) * ap;
        mu_a = theta(9) + theta(10) * yp + theta(11) * xp + theta(12) * ap;
    else
        mu_y = clg.mu_y(k);
        mu_x = clg.mu_x(k);
        mu_a = clg.mu_angle(k);
    end
end

function Gnew = ReshapeGraph(G, K)
    if size(G,3) > 1
        Gnew = G;
    else
        Gnew = repmat(G, [size(G) K]);
    end
end
      
