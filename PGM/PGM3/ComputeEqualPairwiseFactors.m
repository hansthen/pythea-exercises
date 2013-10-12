function factors = ComputeEqualPairwiseFactors (images, K)
% This function computes the pairwise factors for one word in which every
% factor value is set to be 1.
%
% Input:
%   images: An array of structs containing the 'img' value for each
%     character in the word.
%   K: The alphabet size (accessible in imageModel.K for the provided
%     imageModel).
%
% Output:
%   factors: The pairwise factors for this word. Every entry in the factor
%     vals should be 1.
%
% Copyright (C) Daphne Koller, Stanford University, 2012

models = load('PA3Models.mat');
n = length(images);
factors = repmat(struct('var', [], 'card', [], 'val', []), n - 1, 1);

% Your code here:

    for i=1:n-1
        factor_1 = struct('var', [], 'card', [], 'val', []);
        factor_1.var = i;
        factor_1.card = 26;
        factor_1.val = ComputeImageFactor(images(i).img, models.imageModel);
        
        factor_2 = struct('var', [], 'card', [], 'val', []);
        factor_2.var = i+1;
        factor_2.card = 26;
        factor_2.val = ComputeImageFactor(images(i+1).img, models.imageModel);
        factors(i) = FactorProduct(factor_1, factor_2);
    end
end
