function [A,b] = trial_function(n)
    A=pascal(n);
    b=(n:-1:1)';
end