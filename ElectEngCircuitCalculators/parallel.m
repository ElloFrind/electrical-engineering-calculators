function [totalR] = parallel (R)
%takes an array of the resistances of resistors, and returns their total
%resistance if they were all put in parallel
    sumR = 0;
    for i=1:length(R)
        sumR = sumR + 1/R(i);
    totalR = 1/sumR;
end