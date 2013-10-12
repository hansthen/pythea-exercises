function [Beta sigma] = FitLinearGaussianParameters(X, U)

% Estimate parameters of the linear Gaussian model:
% X|U ~ N(Beta(1)*U(1) + ... + Beta(n)*U(n) + Beta(n+1), sigma^2);

% Note that Matlab/Octave index from 1, we can't write Beta(0).
% So Beta(n+1) is essentially Beta(0) in the text book.

% X: (M x 1), the child variable, M examples
% U: (M x N), N parent variables, M examples
%
% Copyright (C) Daphne Koller, Stanford Univerity, 2012

M = size(U,1);
N = size(U,2);

Beta = zeros(N+1,1);
sigma = 1;

U_1 = [U ones(M,1)];
[Beta, sigma, ~] = ols(X,U_1);


c_x = cov(X,1);
c_u = cov(U,1);

s = 0;
for i=1:N
    for j=1:N
        s += Beta(i)*Beta(j)*c_u(i,j);
    end
end
sigma = sqrt(c_x-s);
end
% collect expectations and solve the linear system
% A = [ E[U(1)],      E[U(2)],      ... , E[U(n)],      1     ; 
%       E[U(1)*U(1)], E[U(2)*U(1)], ... , E[U(n)*U(1)], E[U(1)];
%       ...         , ...         , ... , ...         , ...   ;
%       E[U(1)*U(n)], E[U(2)*U(n)], ... , E[U(n)*U(n)], E[U(n)] ]

%result = X * Beta

%sigma = (U_1-X*Beta)' 
%sigma = sigma * (U_1-X*Beta) 
%sigma = sigma / (N-rank(X))


% construct A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A = zeros(N+1,N+1);
% for i=1:N
%    A(1,i) = mean(U(:,i));
%end
%A(1,end) = 1;

%for i=1:N
%    for j=1:N
%        A(i+1,j) = mean(U(:,i) .* U(:,j));
%    end
%    A(i+1,end) = mean(U(:,i));
%end
        
%A = U_1' * U_1 / (M*M)

% B = [ E[X]; E[X*U(1)]; ... ; E[X*U(n)] ]

% construct B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%B = zeros(N+1,1);
%B(1) = mean(X);
%for i=1:N
%    B(i+1) = mean(X.*U(:,i));
%end

% solve A*Beta = B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Beta = A\B;

% then compute sigma according to eq. (11) in PA description
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%c_u = cov(U,1);

%s = 0;
%for i=1:N
%    for j=1:N
%        s += Beta(i)*Beta(j)*c_u(i,j);
%    end
%end


function result = Covariance(X,Y)
    term1 = mean(X.*Y);
    term2 = mean(X) .* mean(Y);
    result = term1 - term2;
end
