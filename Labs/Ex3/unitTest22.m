Theta1 = [1 -1.5 3.7; 1 5.1 2.3];
Theta2 = [1 0.6 -0.8];
X = [1 -1 ; 4 1.5 ; 3.5 2.8 ; 1 1];
p = predict(Theta1, Theta2, X)

Theta1 = [1 5.1 2.3; 1 -1.5 3.7];
Theta2 = [1 -0.8 0.6];
X = [1 -1 ; 4 1.5 ; 3.5 2.8 ; 1 1];
p = predict(Theta1, Theta2, X)


