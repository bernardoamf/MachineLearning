[J] = nnCostFunction(sec(1:1:32)', 2, 4, 4, reshape(tan(1:32), 16, 2) / 5, 1 + mod(1:16,4)', 0.1);

fprintf(['J Regularized should be 170.99 and the value is %f \n\n'], J);
