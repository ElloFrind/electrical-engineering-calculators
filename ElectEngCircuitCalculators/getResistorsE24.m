function [bestRatio] = getResistorsE24(ratio)
%this function takes a ratio, and gets resistors from the E24 series that
%best fit that ratio.
    %resistors is the list of resistors
    resistors = [10,11,12,13,15,16,18,20,22,24,27,30,33,36,39,43,47,51,56,62,68,75,82,91];
    resistors = [resistors, resistors * 10, resistors * 100, resistors * 1000];
    bestRatio = [0,0,Inf];% 1st and 2nd are resistors,3rd is the %error
    for i=1:length(resistors)
        for j=1:length(resistors)
            currentRatioDifference = abs(resistors(i)/resistors(j) - ratio);
            if currentRatioDifference < bestRatio(3)
                bestRatio(1) = resistors(i);
                bestRatio(2) = resistors(j);
                bestRatio(3) = currentRatioDifference;
            end
        end
    end
    bestRatio(3) = bestRatio(3) / ratio;
end