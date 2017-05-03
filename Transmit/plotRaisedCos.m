alpha = 1; 
T = 45; 
t = linspace(-5*T,5*T,20*T);
h = sinc(t/T).*(cos(pi*alpha*t/T)./(1-4*alpha^2*t.^2/T^2));
plot(t, h)