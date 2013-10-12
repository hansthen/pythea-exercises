%CLIQUETREECALIBRATE Performs sum-product or max-product algorithm for 
%clique tree calibration.

%   P = CLIQUETREECALIBRATE(P, isMax) calibrates a given clique tree, P 
%   according to the value of isMax flag. If isMax is 1, it uses max-sum
%   message passing, otherwise uses sum-product. This function 
%   returns the clique tree where the .val for each clique in .cliqueList
%   is set to the final calibrated potentials.
%
% Copyright (C) Daphne Koller, Stanford University, 2012

function P = CliqueTreeCalibrate(P, isMax)


% Number of cliques in the tree.
N = length(P.cliqueList);

% Setting up the messages that will be passed.
% MESSAGES(i,j) represents the message going from clique i to clique j. 
MESSAGES = repmat(struct('var', [], 'card', [], 'val', []), N, N);

if isMax
    for i=1:N
        P.cliqueList(i).val = log(P.cliqueList(i).val);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% We have split the coding part for this function in two chunks with
% specific comments. This will make implementation much easier.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% YOUR CODE HERE
[i,j] = GetNextCliques(P, MESSAGES);
while i != 0
    % compute the message
    factor = P.cliqueList(i);
    incoming = P.edges(:,i);
    for k=1:N
         if incoming(k) && j != k
             if isMax
                 factor = FactorSum(factor, MESSAGES(k,i));
             else
                 factor = FactorProduct(factor, MESSAGES(k,i));
             end
         end
    end
    vars = setdiff(factor.var, P.cliqueList(j).var);
    if isMax
        factor = FactorMaxMarginalization(factor, vars);
    else
        factor = FactorMarginalization(factor, vars);
        factor = Normalize(factor, isMax);
    end
    MESSAGES(i,j) = factor;
    [i,j] = GetNextCliques(P, MESSAGES);
end 
% While there are ready cliques to pass messages between, keep passing
% messages. Use GetNextCliques to find cliques to pass messages between.
% Once you have clique i that is ready to send message to clique
% j, compute the message and put it in MESSAGES(i,j).
% Remember that you only need an upward pass and a downward pass.
%
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%
% Now the clique tree has been calibrated. 
% Compute the final potentials for the cliques and place them in P.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:N
    factor = P.cliqueList(i);
    incoming = P.edges(:,i);
    for k=1:N
         if incoming(k)
             f = MESSAGES(k,i);
             if isMax
                 factor = FactorSum(factor, MESSAGES(k,i));
             else
                 factor = FactorProduct(factor, MESSAGES(k,i));
             end
         end
    end
    P.cliqueList(i) = factor;
end 
return
end


function result = Normalize(factor, isMax)
    result = factor;
    z = sum(result.val);
    result.val = result.val / z;
end

function C = FactorSum(A, B)

% Check for empty factors
if (isempty(A.var)), C = B; return; end;
if (isempty(B.var)), C = A; return; end;

% Check that variables in both A and B have the same cardinality
[dummy iA iB] = intersect(A.var, B.var);
if ~isempty(dummy)
    % A and B have at least 1 variable in common
    assert(all(A.card(iA) == B.card(iB)), 'Dimensionality mismatch in factors');
end

% Set the variables of C
C.var = union(A.var, B.var);
[dummy, mapA] = ismember(A.var, C.var);
[dummy, mapB] = ismember(B.var, C.var);
% Set the cardinality of variables in C
C.card = zeros(1, length(C.var));
C.card(mapA) = A.card;
C.card(mapB) = B.card;
% Initialize the factor values of C:
C.val = zeros(1,prod(C.card));

% Compute some helper indices
% so make sure you understand what these lines are doing.
assignments = IndexToAssignment(1:prod(C.card), C.card);
indxA = AssignmentToIndex(assignments(:, mapA), A.card);
indxB = AssignmentToIndex(assignments(:, mapB), B.card);

C.val = A.val(indxA) .+ B.val(indxB);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end
