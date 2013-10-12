disp('Part 1');
% I multiplied out the combinations by hand
%      Pi0d0 Pi0d1  Pi1d0  Pi1d1
Pid = [0.42  0.28   0.18  0.12];  % the four conditioning events for G

% The CPT from the slide
Pg_id = [0.3  0.4  0.3; 0.05 0.25 0.7; 0.9 0.08 0.02; 0.5 0.3 0.2];

% we can find the probability distribution for G by multiplying by each row
% by the probablity of its conditioning event
%  (look closely at the vector, matrix multiplication here.
Pg = Pid * Pg_id;

%check to confirm that Pg is a valid distribution for G.
sumPg = sum(Pg);
fprintf(1, 'Pg = %2.2f  %2.2f  %2.2f \n', Pg);
fprintf(1, 'Sum of Pg = %2.2f  which is a valid distribution\n', sumPg);

% CPT from the slide
Pl_g = [0.1 0.9; 0.4 0.6; 0.99 0.01];

% Since L depends only on G, we multiply the rows of the CPT by Pg
Pl = Pg * Pl_g;
Pl1 = Pl(2);   % second column
fprintf( 1, 'Probability P(l1) = %4.3g\n\n\n',Pl1);


disp('Part 2');
% Now suppose that we have evidence that I=i0.
% the CPT for P(G|I,D) will change
% Step 1:  perform reduction by eliminating  the i1 rows
%
% notice that now the rows of Pg_id are weighted only by d0 and d1
% We can implement this by zeroing out CPT rows for cases where i1 might occur
Pid = [0.42 0.28 0 0];
Pg = Pid * Pg_id;
sumPg = sum(Pg);
fprintf(1, 'Pg = %2.2f  %2.2f  %2.2f \n', Pg);
fprintf(1, 'Sum of Pg = %2.2f  which is not a valid distribution\n', sumPg);

% Step 2:  renormalize to make Pg a valid distribution
Pg = Pg/sumPg;
sumPg = sum(Pg);
fprintf(1,'However, after Normalization,\n');
fprintf(1, 'Pg = %2.2f  %2.2f  %2.2f \n', Pg);
fprintf(1, 'Sum of Pg = %2.2f  which is a valid distribution\n', sumPg);

% Now we have a valid distribution for Pg given that i0 was observed.
% We can now compute the probability P(l1);
disp('   and');
Pl = Pg * Pl_g;
fprintf(1, 'Pl = %2.2f  %2.2f \n', Pl);
Pl1 = Pl(2);   % second column
fprintf( 1, 'Probability P(l1) = %4.3g\n\n\n',Pl1);


disp('Part 3');
% Now suppose that we have evidence that I=i0 AND D=d0
% the CPT for P(G|I,D) will change again
% Step 1:  perform reduction by eliminating  the i1, d1 rows
%
% notice that now the rows of Pg_id are weighted only by d1
% We can implement this by zeroing out CPT rows for cases where i1 might occur
Pid = [0.42 0 0 0];
Pg = Pid * Pg_id;
sumPg = sum(Pg);
fprintf(1, 'Pg = %2.2f  %2.2f  %2.2f \n', Pg);
fprintf(1, 'Sum of Pg = %2.2f  which is not a valid distribution\n', sumPg);

% Step 2:  renormalize to make Pg a valid distribution
Pg = Pg/sumPg;
sumPg = sum(Pg);
fprintf(1,'However, after Normalization,\n');
fprintf(1, 'Pg = %2.2f  %2.2f  %2.2f \n', Pg);
fprintf(1, 'Sum of Pg = %2.2f  which is a valid distribution\n', sumPg);

% Now we have a valid distribution for Pg given that i0,d0 were observed.
% We can now compute the probability P(l1);
disp('   and');
Pl = Pg * Pl_g;
fprintf(1, 'Pl = %2.2f  %2.2f \n', Pl);
Pl1 = Pl(2);   % second column
fprintf( 1, 'Probability P(l1) = %4.3g\n',Pl1);
