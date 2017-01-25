function [patterns, targets] = mlp_setup_8_3_8_data(classSize)
    randNoGenState = rng;
    
    % generate normal random numbers for each class
    patterns = eye(classSize) * 2 - 1;
    targets = patterns;
        
    % randomize data
    permute = randperm(classSize);
    patterns = patterns(:, permute);
    targets = targets(:, permute);
end

