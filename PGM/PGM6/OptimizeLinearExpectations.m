% Copyright (C) Daphne Koller, Stanford University, 2012

function [MEU OptimalDecisionRule] = OptimizeLinearExpectations( I )
  % Inputs: An influence diagram I with a single decision node and one or more utility nodes.
  %         I.RandomFactors = list of factors for each random variable.  These are CPDs, with
  %              the child variable = D.var(1)
  %         I.DecisionFactors = factor for the decision node.
  %         I.UtilityFactors = list of factors representing conditional utilities.
  % Return value: the maximum expected utility of I and an optimal decision rule 
  % (represented again as a factor) that yields that expected utility.
  % You may assume that there is a unique optimal decision.
  %
  % This is similar to OptimizeMEU except that we will have to account for
  % multiple utility factors.  We will do this by calculating the expected
  % utility factors and combining them, then optimizing with respect to that
  % combined expected utility factor.  
  MEU = [];
  OptimalDecisionRule = [];
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  % YOUR CODE HERE
  %
  % A decision rule for D assigns, for each joint assignment to D's parents, 
  % probability 1 to the best option from the EUF for that joint assignment 
  % to D's parents, and 0 otherwise.  Note that when D has no parents, it is
  % a degenerate case we can handle separately for convenience.
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  U = I.UtilityFactors;
  D = I.DecisionFactors(1);
  has_parents = length(D.var) ~= 1;

  factor = struct('var', [], 'card', [], 'val', []);
  for i=1:length(U)
     I.UtilityFactors = U(i);
     EUF = CalculateExpectedUtilityFactor(I);
     factor = FactorSum(factor, EUF);
  end
  has_parents = length(D.var) ~= 1;

  f = factor;
  % this code assumes the decision variable is always last!
  % so reorder f to make this the case
  var_order = [f.var(f.var ~= D.var(1)), D.var(1)];
  f = ReorderFactorVars(f, var_order);

  if has_parents
      old_vals = f.val;
      card = f.card(end);
      new_val = f.val(:);
      new_val(:) = 0;
      for i=1:card
         vals = f.val(i:card:end);
         [val, index] = max(vals);
         highest = i+(index-1)*card;
         new_val(highest) = 1;
      end
      MEU = sum(f.val(new_val==1));
      f.val(:) = new_val;
  else
      [val, index] = max(f.val);
      f.val(:) = 0;
      f.val(index) = 1;
      MEU = val;
  end
  f = ReorderFactorVars(f, sort(f.var));
  OptimalDecisionRule = f;
end

function F2 = ReorderFactorVars(F, newVarOrder)
  % input:
  % F is a factor with fields: var, card, and val
  % newVarOrder is a reordering off the F.card array
  %   so if F.card = [2,5,7], then [2,5,7] or [7,2,5] etc are legal
  %   values for newVarOrder, while [2,5] or [2,5,1] etc are not legal
  %
  % output F2 is basically the same as F execept its var and card
  % now match the reordered variables, and the .val array has been
  % reordered to fit with the changed variables
  %
  % Thanks and credit to Alex Gilman for the [~,permute] in line 18 part
  % Use this at your own risk. I'd suggest trying it out on
  % some test factors (like FullI.RandomFactors(1) ) to see what it does

  assert(length(F.var) == length(newVarOrder));
  [test, permute] = ismember(F.var, newVarOrder);
  assert(prod(test) ~= 0); % if passed, newVarOrder is valid perm. of F.var,
  [~, newP] = ismember(newVarOrder,F.var); % newP is the positional permutation of F with inverse permute
  F2.var = newVarOrder;
  F2.card = F.card(newP);
  % to match, we take F2's assignment table and reorder columns by permute
  tmp = IndexToAssignment([1:prod(F2.card)],F2.card);
  newAssign = tmp(:,permute);
  % now we use F's card to evaluate each row of newAssign as an index into F.val
  idx = AssignmentToIndex(newAssign,F.card);
  F2.val = F.val(idx);
end

