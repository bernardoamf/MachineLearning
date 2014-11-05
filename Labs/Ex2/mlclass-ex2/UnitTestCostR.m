X = [ones(3,1) magic(3)];
y = [1 0 1]';
theta = [-2 -1 1 2]';
[j g ] = costFunctionReg(theta, X, y, 0)
[j g ] = costFunctionReg(theta, X, y, 3)
