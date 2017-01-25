%% 5.3 The encoder problem
% DESCRIPTIVE TEXT
clear;
' --Start -- '
eta = 0.001;
alpha = 0.9;
epochs = 50;

[patterns, targets] = mlp_setup_8_3_8_data(8);
hiddenNO = 3;

[ outputs, hiddenoutputs, hiddenweights, inputsweights, inputs] = mlp(patterns, targets, hiddenNO, epochs, eta, alpha);

% Inputs layer weights
inputs

% Inputs layer weights
sign(inputsweights)

% Hidden layer weights
sign(hiddenweights)

% Outputs
sign(outputs)

%%% The writeup
% - Differemt number of epochs have been tried. The error converges when 
%   using more than 25 epochs. The SSE (sum of squared errors) starts at 32
%   = 4 * 8, i.e. all datapoints, 8 patterns, are wrong and then converges to 8 = 4 * 2, i.e. 2 errors. 
% - The minimum SSE reached was 8, i.e. 2 patterns were wrongly
%   classified/encoded.
