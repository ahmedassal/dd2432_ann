function [patterns, targets] = g_setupdata(classSize)
    randNoGenState = rng;
    if classSize >1
        
        % generate normal random numbers for each class
        classA(1, :) = [randn(1,classSize/2) .* 0.2 - 1.0,...
                        randn(1,classSize/2) .* 0.2 + 1.0];
        classA(2, :) = randn(1,classSize) .* 0.2 + 0.3;
        classB(1, :) = randn(1,classSize) .* 0.3 + 0.0;
        classB(2, :) = randn(1,classSize) .* 0.3 - 0.1;
        
        patterns = [classA, classB];
        targets = [ones(1,size(classA,2)), -ones(1,size(classB,2))];
        
        % randomize data
        permute = randperm(2 * classSize);
        patterns = patterns(:, permute);
        targets = targets(:, permute);
    end
end

