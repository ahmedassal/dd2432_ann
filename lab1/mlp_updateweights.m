function [ delta_w, delta_v, inputsweights, hiddenweights ] = mlp_updateweights(inputs, inputsweights, hiddenoutputs, hiddenweights, delta_o, delta_h, delta_w, delta_v, eta, alpha)
%MLP_UPDATEWEIGHTS Summary of this function goes here
%   Detailed explanation goes here
delta_w = (delta_w .* alpha) - (delta_h * inputs') .* (1-alpha);
delta_v = (delta_v .* alpha) - (delta_o * hiddenoutputs') .* (1-alpha);
inputsweights = inputsweights + delta_w .* eta;
hiddenweights = hiddenweights + delta_v .* eta;
end

