%GETNEXTCLIQUES Find a pair of cliques ready for message passing
%   [i, j] = GETNEXTCLIQUES(P, messages) finds ready cliques in a given
%   clique tree, P, and a matrix of current messages. Returns indices i and j
%   such that clique i is ready to transmit a message to clique j.
%
%   We are doing clique tree message passing, so
%   do not return (i,j) if clique i has already passed a message to clique j.
%
%	 messages is a n x n matrix of passed messages, where messages(i,j)
% 	 represents the message going from clique i to clique j. 
%   This matrix is initialized in CliqueTreeCalibrate as such:
%      MESSAGES = repmat(struct('var', [], 'card', [], 'val', []), N, N);
%
%   If more than one message is ready to be transmitted, return 
%   the pair (i,j) that is numerically smallest. If you use an outer
%   for loop over i and an inner for loop over j, breaking when you find a 
%   ready pair of cliques, you will get the right answer.
%
%   If no such cliques exist, returns i = j = 0.
%
%   See also CLIQUETREECALIBRATE
%
% Copyright (C) Daphne Koller, Stanford University, 2012


function [i, j] = GetNextCliques(P, messages)

% initialization
% you should set them to the correct values in your code
i = 0;
j = 0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N = length(P.cliqueList);

for i=1:N
    c1 = P.cliqueList(i);
    for j=1:N
        c2 = P.cliqueList(j);
        if ~P.edges(i,j)
            %printf("Unconnected %d,%d\n", i, j);
            continue
        end
        %printf("Connected   %d,%d\n", i, j);
        if length(messages(i,j).var)
            %printf("Already sent a message from %d to %d\n", i, j);
            continue
        end
        % find connected cliques
        children = P.edges(:,i) == 1;
        clean = 0;
        for k=1:length(children)
            if children(k) && k != j
                message = messages(k,i);
                % message
                if ~length(message.var)
                    % printf("Does not have message\n");
                    clean = 1;
                    break
                end
            end
        end
        if ~clean
            % printf("Has received all required messages\n");
            % printf("we have found a ready clique (%d,%d)\n", i, j);
            return
        end
    end
end
i = j = 0; 
%printf("we have found a ready clique (%d,%d)\n", i, j);
return;

