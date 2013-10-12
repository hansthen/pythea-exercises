function factors = ChooseTopSimilarityFactors (allFactors, F)
% This function chooses the similarity factors with the highest similarity
% out of all the possibilities.
%
% Input:
%   allFactors: An array of all the similarity factors.
%   F: The number of factors to select.
%
% Output:
%   factors: The F factors out of allFactors for which the similarity score
%     is highest.
%
% Hint: Recall that the similarity score for two images will be in every
%   factor table entry (for those two images' factor) where they are
%   assigned the same character value.
%
% Copyright (C) Daphne Koller, Stanford University, 2012

% If there are fewer than F factors total, just return all of them.
if (length(allFactors) <= F)
    factors = allFactors;
    return;
end

function s = score(factor)
    s = 0.0;
    for i=1:length(factor)
        s += factor.val(AssignmentToIndex([i,i], factor.card));
    end
end

similarities = zeros(1, length(allFactors));

for i=1:length(allFactors)
    similarities(i) = score(allFactors(i));
end

[s,indices] = sort(similarities);
% Your code here:

indices(end-F+1:end)
factors = allFactors(indices(end-F+1:end));

end

