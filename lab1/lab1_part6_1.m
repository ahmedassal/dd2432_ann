%% 5.3 The encoder problem
% DESCRIPTIVE TEXT
clear;
' --Start -- '
eta = 0.001;
alpha = 0.9;
epochs = 50;

[patterns, targets, x, y] = rbf_setup_realdata(5);
hiddenNO = 30;

[ outputs, hiddenoutputs, hiddenweights, inputsweights, inputs] = rbf(patterns, targets, hiddenNO, epochs, eta, alpha, x, y);

% Inputs layer weights
%inputs

% Inputs layer weights
%sign(inputsweights)

% Hidden layer weights
%sign(hiddenweights)

% Outputs
%sign(outputs)

%%% The writeup
%
