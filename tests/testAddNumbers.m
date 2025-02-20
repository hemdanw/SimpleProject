classdef testAddNumbers < matlab.unittest.TestCase
    methods(Test)
        function testAddition(testCase)
            actSolution = addNumbers(1, 2);
            expSolution = 3;
            testCase.verifyEqual(actSolution, expSolution);
        end
        
        function testAdditionWithNegative(testCase)
            actSolution = addNumbers(-1, 2);
            expSolution = 1;
            testCase.verifyEqual(actSolution, expSolution);
        end
    end
end