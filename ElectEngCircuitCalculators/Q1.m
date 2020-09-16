clear
R1 = input('Enter R1:');
R2 = input('Enter R2:');
R3 = input('Enter R3:');
R4 = input('Enter R4:');
R5 = input('Enter R5:');
R6 = input('Enter R6:');
V = input('Enter V:');
%R### is the total resistance of resistors #, # and #
R36 = R3 + R6;
R356 = parallel([R5,R36]);
R2356 = R2 + R356;
R23456 = parallel([R2356,R4]);
Rt = R23456 + R1;
%I# is the current through #
%V# is the voltage relative to the negative terminal of the voltage source
%at the #th node clockwise from the positive terminal
I1 = V/Rt;
V1 = V - R1*I1;
I4 = V1/R4;
I2 = I1-I4;
V2 = V1 - R2*I2;
I5 = V2/R5;
I3 = I2-I5;


disp('The current through R1 is ');
disp(I1);
disp('The current through R2 is ');
disp(I2);
disp('The current through R3 is ');
disp(I3);
