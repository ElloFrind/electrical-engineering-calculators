clear
format long g
R1 = input('Enter R1:');
R2 = input('Enter R2:');
%I values assume clockwise movement of current
Is1 = input('Enter Is1:');
Is2 = input('Enter Is2:');
Rt = parallel([R1,R2]);
I = Is2 - Is1;
V = I*Rt;
ItoA = currentDivision([R1,R2],R1,I) + Is1;
disp('Current between A and B:');
disp(ItoA);
disp('Voltage at A:');
disp(V);