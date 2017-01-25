function [ patterns, targets, x, y ] = rbf_setup_realdata( extereme )
%RBF_SETUP_REALDATA Summary of this function goes here
%   Detailed explanation goes here
x = [-extereme:1:extereme]';
y = x;
z = exp(-x .* x * 0.1) * exp(-y .* y * 0.1)' - 0.5;

figure(1);
mesh(x, y, z);

ndata  = length(x) * length(y);
targets  = reshape(z, 1, ndata);
[xx, yy] = meshgrid(x, y);
patterns = [reshape(xx, 1, ndata); reshape(yy, 1, ndata)];


end

