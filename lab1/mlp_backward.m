function [ delta_o, delta_h ] = mlp_backward( outputs, pre_outputs, targets, hiddenoutputs, pre_hiddenoutputs, hiddenweights )
%MLP_BACKWARD Summary of this function goes here
%   Detailed explanation goes here
delta_o = mlp_deltaoutput(outputs, pre_outputs, targets);
delta_h = mlp_deltahidden(delta_o, hiddenoutputs, pre_hiddenoutputs, hiddenweights); 
delta_h = delta_h(1:size(hiddenweights,2) - 1, :);

end

