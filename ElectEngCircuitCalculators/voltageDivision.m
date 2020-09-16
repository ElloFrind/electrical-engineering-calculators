function [V] = voltageDivision (resistances,targetResistance,voltage)
%takes an array of resistances, the resistor you want the voltage over and
%the total voltage and returns the voltage over the specified resistor,
%assuming the resistors are in series
    sumR = sum(resistances);
    V = voltage * targetResistance / sumR;
end