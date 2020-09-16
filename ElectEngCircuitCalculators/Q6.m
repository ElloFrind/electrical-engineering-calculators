clear
format long g
R1 = input('Enter R1:');
R2 = input('Enter R2:');
R3 = input('Enter R3:');
V = input('Enter V:');
I = input('Enter I:');
%V is assumed to be upwards positive
%I is assumed to be away from A positive
VA = (-I + V/R1)/(1/R1 + 1/R3);
I1 = (V-VA)/R1;
disp('Voltage at A relative to the negative terminal of the voltage source:');
disp(VA);
disp('Current through R1:');
disp(I1);