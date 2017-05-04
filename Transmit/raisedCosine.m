function h = raisedCosine(t, alpha, T)
%
%   function h = RaisedCosineIR(t, alpha, T)
%
%   returns the impuse response of a raised cosine filter
%   t - time indices to evaluate the impulse response at
%   alpha - roll-off factor
%   T - symbol period
%

h = sinc(t/T).*(cos(pi*alpha*t/T)./(1-4*alpha^2*t.^2/T^2));
end 
