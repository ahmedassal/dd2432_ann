%% 4.3 Non-separable data
 % DESCRIPTIVE TEXT
 clear
 [patterns, targets] = g_setup_nonsepdata(100);
 plot(patterns(1, find(targets>0)), patterns(2, find(targets>0)), '*', patterns(1, find(targets<0)),patterns(2, find(targets<0)), '+');
 
 eta = 0.001;
 epochs = 20;
 [initweights, weights]  = pcn_delta(patterns, targets, eta, epochs)