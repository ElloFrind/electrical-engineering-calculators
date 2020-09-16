function [I] = currentDivision (resistances, targetResistance, current)
%takes an array of resistances, a specified resistor and a total current
%and returns the current through the specified resistor, assuming the
%resistors are in parallel
    sumR = 0;
    for i=1:length(resistances)
        sumR = sumR + 1/resistances(i);
    I = ((1/targetResistance) / sumR) * current;
end