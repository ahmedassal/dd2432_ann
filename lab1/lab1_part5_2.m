%% 5 Classification with the two layer perceptron
% INTRODUCTORY TEXT
%% 5.2 Non-linear separable data (once more)
% DESCRIPTIVE TEXT
clear;
' --Start -- '
eta = 0.001;
alpha = 0.9;
epochs = 800;

[patterns, targets] = g_setup_nonsepdata(100);
%hiddenNO = size(patterns, 1);
hiddenNO = 6;

figure(1);
plot(patterns(1, find(targets>0)), patterns(2, find(targets>0)), '*', patterns(1, find(targets<0)),patterns(2, find(targets<0)), '+');
[ outputs, hiddenoutputs, hiddenweights, inputsweights, inputs]  = mlp(patterns, targets, hiddenNO, epochs, eta, alpha);

%testinp = [0:2, 4:6;0:2, 4:6]
%testtargs = [ones(1, 3), -ones(1, 3)]
%pcn_plotsepline()
%result = mlp(testinp, testtargs, size(testinp, 1), epochs, eta, alpha);

%% 5.3 The encoder problem
% DESCRIPTIVE TEXT

