clear
format long g
R1 = input('Enter R1:');
R2 = input('Enter R2:');
R3 = input('Enter R3:');
R4 = input('Enter R4:');
V = input('Enter V:');

V3 = voltageDivision([R1,R3],R3,V);
V4 = voltageDivision([R2,R4],R4,V);
deltaV = V3-V4;

I = V / (parallel([22000,10000]) + parallel([5600,56000]));
I1 = currentDivision([R1,R2],R1,I);
I3 = currentDivision([R3,R4],R3,I);
deltaI = I1-I3;

disp('Potential difference between A and B:');
disp(deltaV);
disp('Current flow between A and B:');
disp(deltaI);