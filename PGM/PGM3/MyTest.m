% A simple test suite for PA 3
%
% copy the comparedata.m file from last week's test suite or from
% http://www.mathworks.com/matlabcentral/fileexchange/1459-comparedata
% into the directory for this weeks assignment and save this file
% as PA3Test.m
%
% A test can have three different results:
%  - If the test suite says "OK", your code produced the exactly the same
%     output as the sample data.
%  - If it says "ok with warnings", the output of your code will probably
%    pass the initial submit check, but differs from the sample output.
%    A likely cause is that a val-array contains the right values in the
%    right order, but a different shape (like a row instead of a column
%    vector).
%  - If it says "FAIL", your code produced something that will most
%    probably not be accepted.
%
% If you call PA3Test, it will always run all tests in sequence until the
% first test fails.
function result = MyTest()
models = load('PA3Models.mat');
samples = load('PA3SampleCases.mat');
data = load('PA3Data.mat');

%images = samples.Part1SampleImagesInput;
models.imageModel.ignoreSimilarity = true;

%[charAcc, wordAcc] = ScoreModel(data.allWords, models.imageModel, [], []);
[charAcc, wordAcc] = ScoreModel(data.allWords, models.imageModel, models.pairwiseModel, []);
end
