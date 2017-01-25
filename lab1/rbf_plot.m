function [ ] = rbf_plot( x, y , outputs)
%RBF_PLOT Summary of this function goes here
%   Detailed explanation goes here
ndata = length(x) * length(y);
gridsize = sqrt(ndata);
zz = reshape(outputs, length(x), length(y));
figure(2);
mesh(x, y, zz);
axis([-5 5 -5 5 -0.7 0.7]);
drawnow;
end

