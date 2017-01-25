function [initweights, weights]=pcn_delta(ins, targs, eta, epochs)
    [insize, ndata] = size(ins);
    [outsize, ndata] = size(targs);
    inputs = [ins; ones(1, size(ins, 2))];
                
    weights = g_randnW(insize +1 , outsize);
    initweights =  weights;
    for i= 1:epochs
        pcn_plotsepline(ins, targs, weights);
        deltaW = -eta * (weights * inputs - targs) * inputs.';
        weights = weights + deltaW;
    end
    
end