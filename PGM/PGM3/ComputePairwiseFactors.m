function factors = ComputePairwiseFactors (images, pairwiseModel, K)
% This function computes the pairwise factors for one word and uses the
% given pairwise model to set the factor values.
%
% Input:
%   images: An array of structs containing the 'img' value for each
%     character in the word.
%   pairwiseModel: The provided pairwise model. It is a K-by-K matrix. For
%     character i followed by character j, the factor value should be
%     pairwiseModel(i, j).
%   K: The alphabet size (accessible in imageModel.K for the provided
%     imageModel).
%
% Output:
%   factors: The pairwise factors for this word.
%
% Copyright (C) Daphne Koller, Stanford University, 2012

models = load('PA3Models.mat');
%samples = load('PA3SampleCases.mat');
%data = load('PA3Data.mat');

n = length(images);

% If there are fewer than 2 characters, return an empty factor list.
if (n < 2)
    factors = [];
    return;
end

factors = repmat(struct('var', [], 'card', [], 'val', []), n - 1, 1);

for i=1:n-1
    factor_1 = struct('var', [], 'card', [], 'val', []);
    factor_1.var = [i, i+1];
    factor_1.card = [K, K];
    factor_1.val = pairwiseModel(:);

    factors(i) = factor_1;
end

% Your code here:

end
