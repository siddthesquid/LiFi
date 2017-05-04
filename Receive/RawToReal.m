function xreal = RawToReal(fileName,glitchSize)
    f1 = fopen(fileName, 'r'); %'r': open file for reading
    y_tmp = fread(f1, 'float32'); %read as a float32 source type
    y = y_tmp(1:2:end)+1j*y_tmp(2:2:end); %including imaginary part
    y = y(glitchSize:end-glitchSize); % get rid of glitch in the beginning and end

    ysquare = y.^2;
    yfft = fft(ysquare);
    yfftshift = fftshift(yfft);

    hbarsquare = max(abs(yfftshift));
    hbar = sqrt(hbarsquare);
    twofdelta_idx = find(abs(yfftshift) == hbarsquare);
    v = linspace(-1*pi,pi*(length(yfft)-1)/length(yfft),length(yfft));

    twofdelta = v(twofdelta_idx);
    fdelta = twofdelta/2;
    ns = (0:length(yfft)-1)'; %conjugate transpose (ok b/c n is real)
    x = y.*exp(-1j*fdelta*ns)/hbar;
    xreal = real(x)';
end
