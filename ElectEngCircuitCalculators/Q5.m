clear
format long g
R1 = input('Enter R1:');
R2 = input('Enter R2:');
R3 = input('Enter R3:');
V1 = input('Enter V1:');
V2 = input('Enter V2:');
V3 = input('Enter V3:');
syms I1 I2 I3
eqn1 = I1 + I2 + I3 == 0;
eqn2 = -R1*I1 + R2*I2 + 0*I3 == V2-V1;
eqn3 = 0*I1 - R2*I2 + R3*I3 == V3-V2;
[A,B] = equationsToMatrix([eqn1,eqn2,eqn3], [I1,I2,I3]);
IVals = linsolve(A,B);
VA = V2 - R2 * IVals(2);
disp('I1:');
disp(-vpa(IVals(1)));
disp('I2:');
disp(-vpa(IVals(2)));
disp('I3:');
disp(-vpa(IVals(3)));
disp('V @ A:');
disp(vpa(VA));