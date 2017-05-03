% Decoding PAM

%x = y.*exp(-1j*fdelta*ns)/hbar; %from receive_new file
%xreal = real(x);

s = 50; %samples/symbol
metrics = zeros(1,ceil(length(xrealnew)/s));
for k = 1:k
    metrics(k) = rms(xrealnew(k:s:end)); % find the ideal starting point for sampling
end
[maxV,best] = max(metrics);

mhat = (sign(xrealnew(best:s:end)+0.0000000001) + 1)./2;
plot(mhat)