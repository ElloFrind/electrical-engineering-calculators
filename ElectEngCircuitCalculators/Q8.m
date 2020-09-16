clear
syms I2 I3 I5
eqn1 = 18.1 + I2 + I3 == 0;
eqn2 = -I2 - 3.7 + I5 == 0;
eqn3 = 39000*I2 + 150000*I5 == 6800*I3;
[A,B] = equationsToMatrix([eqn1, eqn2, eqn3], [I2, I3, I5]);
X = linsolve(A,B);
disp(X)