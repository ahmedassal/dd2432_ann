function  [ outputs, hiddenoutputs, hiddenweights, inputsweights, inputs] = mlp( inputs, targets, hnodesNO, epochs, eta, alpha )
%MLP Summary of this function goes here
%   Detailed explanation goes here
delta_w = 0;
delta_v = 0;

inputs = g_appendbiases(inputs, 1);
inputsweights = g_randnW(size(inputs,1), hnodesNO);
hiddenweights = g_randnW(hnodesNO + 1, size(targets, 1));

error = zeros(1, epochs);
for i= 1:epochs
    % forward pass----------------
    [ outputs, pre_outputs, hiddenoutputs, pre_hiddenoutputs ]= mlp_forward(inputs, inputsweights, hiddenweights);

    % backward pass----------------
    [delta_o, delta_h] = mlp_backward( outputs, pre_outputs, targets, hiddenoutputs, pre_hiddenoutputs, hiddenweights);

    % weights update----------------
    [ delta_w, delta_v, inputsweights, hiddenweights ] = mlp_updateweights(inputs, inputsweights, hiddenoutputs, hiddenweights, delta_o, delta_h, delta_w, delta_v, eta, alpha);
    % outputs = sign(outputs);
    error(i) = sum(sum(abs(sign(outputs) - targets) ./2));
%     
%     inputsweights
%     pre_hiddenoutputs
%     hiddenoutputs
%     hiddenweights
%     pre_outputs
%     outputs
end
figure(2);
plot(1:epochs, error(1:epochs))

% Last SSE error
error(epochs)
end


