f1 = fopen('recieved_file_v23', 'r'); %'r': open file for reading
y_tmp = fread(f1, 'float32'); %read as a float32 source type
y = y_tmp(1:2:end)+1j*y_tmp(2:2:end); %including imaginary part

% get rid of glitch in the beginning and end
y = y(100:end-100);

ysquare = y.^2;
yfft = fft(ysquare);
yfftshift = fftshift(yfft);

hbarsquare = max(abs(yfftshift));
hbar = sqrt(hbarsquare);
twofdelta_idx = find(abs(yfftshift) == hbarsquare);
v = linspace(-1*pi,pi*(length(yfft)-1)/length(yfft),length(yfft));

twofdelta = v(twofdelta_idx);
fdelta = twofdelta/2;
ns = [0:length(yfft)-1]'; %conjugate transpose (ok bc n is real)
x = y.*exp(-1j*fdelta*ns)/hbar;

fclose(f1);
xshort = x(1.3221844e6:1.39304e6);

x_short = xshort(1:70000);
x_tx_short = x_tx(1:70000);
corr = xcorr(x_tx_short,x_short);

plot(real(corr));
