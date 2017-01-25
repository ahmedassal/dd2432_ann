function [ weights ] = g_randnW( inputs, outputs )
%RANDNW Summary of this function goes here
%   generates normal random weights for the neural network
    weights = randn(outputs, inputs ) * 0.1 - 0.05;
end

