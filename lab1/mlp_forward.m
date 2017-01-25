function [ outputs, pre_outputs, hiddenoutputs, pre_hiddenoutputs ] = mlp_forward( inputs, inputsweights, hiddenweights )
%MLP_FORWARD Summary of this function goes here
%   Detailed explanation goes here
% inputs = g_appendbiases(inputs, 1);
pre_hiddenoutputs = inputsweights * inputs;
hiddenoutputs = mlp_psi_activ(pre_hiddenoutputs);
old_hiddenoutputs = hiddenoutputs;
hiddenoutputs = g_appendbiases(hiddenoutputs, 1);
pre_outputs = hiddenweights * hiddenoutputs;
hiddenoutputs = old_hiddenoutputs;
outputs = mlp_psi_activ(pre_outputs );
end

