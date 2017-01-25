 %% 4.1 Generate training data
 % DESCRIPTIVE TEXT
 clear;
 [patterns, targets] = g_setup_sepdata(100);
 plot(patterns(1, find(targets>0)), patterns(2, find(targets>0)), '*', patterns(1, find(targets<0)),patterns(2, find(targets<0)), '+');
 %% 4.2 Implementation of the Delta rule
 % $$\Delta W = - \eta (WX - T)X ^ T$$
 % 
 % Write the Matlab commands that implements these computations. Note that X
 % not directly corresponds to the content of the variable patterns since it doesn´t
 % contain the row with ones needed for the bias terms to enter the computation.
 eta = 0.001;
 epochs = 20;
 [initweights, weights]  = pcn_delta(patterns, targets, eta, epochs)

