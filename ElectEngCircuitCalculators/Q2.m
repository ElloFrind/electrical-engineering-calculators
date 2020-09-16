clear
R1 = input('Enter R1:');
R2 = input('Enter R2:');
R3 = input('Enter R3:');
R4 = input('Enter R4:');
R5 = input('Enter R5:');
R6 = input('Enter R6:');
I = input('Enter I:');
%R### is the total resistance of resistors #, # and #
R36 = R3 + R6;
R356 = parallel([R5,R36]);
R2356 = R2 + R356;
R23456 = parallel([R2356,R4]);
Rt = R23456 + R1;
%V# is the voltage over component #, where s is the current source
Vs = I*Rt;
V1 = R1*I;
V4 = Vs-V1;
I4 = V4/R4;
I2 = I-I4;
V2 = V4 - R2*I2;

disp('The voltage over the current supply is ');
disp(Vs);
disp('The voltage over R4 is ');
disp(V4);
disp('The voltage over R5 is ');
disp(V2);
