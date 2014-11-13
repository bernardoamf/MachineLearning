all_theta = [-0.7 0.5 -0.3 0.3;-0.7 -0.3 0.5 0.3;-0.7 -0.3 -0.3 -0.5];
X = [1 0 0;0 1 0;0 0 -1];
%size_X = size(X)
%size_allTheta = size(all_theta)
p = predictOneVsAll(all_theta, X)

