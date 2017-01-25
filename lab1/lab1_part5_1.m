%% 5 Classification with the two layer perceptron
% INTRODUCTORY TEXT
%% 5.1 Implementation of a two layer perceptron
% DESCRIPTIVE TEXT
clear;
' --Start -- '
eta = 0.001;
alpha = 0.9;
epochs = 80;

[patterns, targets] = g_setup_sepdata(100);
hiddenNO = size(patterns, 1);

% figure(1);
% plot(patterns(1, find(targets>0)), patterns(2, find(targets>0)), '*', patterns(1, find(targets<0)),patterns(2, find(targets<0)), '+');
[ outputs, hiddenoutputs, hiddenweights, inputsweights, inputs] = mlp(patterns, targets, hiddenNO, epochs, eta, alpha);

figure(3);
pcn_plotsepline(inputs, targets, hiddenweights);