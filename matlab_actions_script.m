import matlab.unittest.TestRunner;
  
addpath(genpath('tests/'));

suite = testsuite(pwd, 'IncludeSubfolders', true);

runner = TestRunner.withTextOutput();

results = runner.run(suite);
display(results);

assertSuccess(results);