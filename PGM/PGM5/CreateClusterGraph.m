%CREATECLUSTERGRAPH Takes in a list of factors and returns a Bethe cluster
%   graph. It also returns an assignment of factors to cliques.
%
%   C = CREATECLUSTERGRAPH(F) Takes a list of factors and creates a Bethe
%   cluster graph with nodes representing single variable clusters and
%   pairwise clusters. The value of the clusters should be initialized to 
%   the initial potential. 
%   It returns a cluster graph that has the following fields:
%   - .clusterList: a list of the cluster beliefs in this graph. These entries
%                   have the following subfields:
%     - .var:  indices of variables in the specified cluster
%     - .card: cardinality of variables in the specified cluster
%     - .val:  the cluster's beliefs about these variables
%   - .edges: A cluster adjacency matrix where edges(i,j)=1 implies clusters i
%             and j share an edge.
%  
%   NOTE: The index of the cluster for each factor should be the same within the
%   clusterList as it is within the initial list of factors.  Thus, the cluster
%   for factor F(i) should be found in P.clusterList(i) 
%
% Copyright (C) Daphne Koller, Stanford University, 2012

function P = CreateClusterGraph(F, Evidence)
N = length(F);
P.clusterList = [];
P.edges = zeros(N,N);
for j = 1:length(Evidence),
    if (Evidence(j) > 0),
        F = ObserveEvidence(F, [j, Evidence(j)]);
    end;
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% copy the clusters into the cluster list
for i=1:N
    P.clusterList(i) = F(i);
end

leafs = zeros(1,N);
for i=1:N
    if length(P.clusterList(i).var) == 1
        leafs(i) = 1;
    end
end
leafIdx = find(leafs);
clusterIdx = find(leafs==0);

for i=1:length(leafIdx)
    leaf = P.clusterList(leafIdx(i));
    for j=1:length(clusterIdx)
        cluster = P.clusterList(clusterIdx(j));
        if ismember(leaf.var, cluster.var)
            P.edges(leafIdx(i),clusterIdx(j)) = 1;
            P.edges(clusterIdx(j),leafIdx(i)) = 1;
        end
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

